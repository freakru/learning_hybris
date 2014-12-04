/*
 * [y] hybris Platform
 *
 * Copyright (c) 2000-2014 hybris AG
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of hybris
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with hybris.
 *
 * 
 */
package de.hybris.platform.sap.core.jco.rec.impl;

import de.hybris.platform.sap.core.jco.rec.JCoRecRuntimeException;
import de.hybris.platform.sap.core.jco.rec.JCoRecXMLConstants;
import de.hybris.platform.sap.core.jco.rec.JCoRecXMLParserException;

import java.util.HashSet;
import java.util.Set;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.sap.conn.jco.JCo;
import com.sap.conn.jco.JCoCustomRepository;
import com.sap.conn.jco.JCoException;
import com.sap.conn.jco.JCoFunctionTemplate;
import com.sap.conn.jco.JCoListMetaData;
import com.sap.conn.jco.JCoRecordMetaData;


/**
 * This class provides functionality to parse JCoMetaData from a DOM Document.
 */
class JCoRecMetaDataParser
{
	private final Set<Node> parsedNodes = new HashSet<Node>();

	private JCoCustomRepository repository;

	/**
	 * Parses metadata from a JCoRecorder repository file.
	 * 
	 * @param doc
	 *           the parsed content will be added to this document.
	 * @param repo
	 *           the JCoRecorder repository that should be parsed.
	 * @throws JCoRecXMLParserException
	 * <br/>
	 *            if<br/>
	 *            <ul>
	 *            <li>child elements can't be retrieved</li>
	 *            <li>the repository contains unexpected content</li>
	 *            <li>the parsing of the content raises an exception</li>
	 *            </ul>
	 */
	public void parseRepository(final Document doc, final JCoCustomRepository repo) throws JCoRecXMLParserException
	{

		repository = repo;
		final Element repositoryRoot = doc.getDocumentElement();
		// get MetaData Root Tag
		final Element metaDataRoot = getChildElement(repositoryRoot, JCoRecXMLConstants.TAGNAME_METADATA_ROOT, true);

		// get RecordMetaData Root Tag (need to be parsed first)
		final Element recordRoot = getChildElement(metaDataRoot, JCoRecXMLConstants.TAGNAME_METADATA_RECORD_ROOT, false);

		// get FunctionTemplates Root Tag
		final Element templateRoot = getChildElement(metaDataRoot, JCoRecXMLConstants.TAGNAME_METADATA_TEMPLATE_ROOT, false);

		if (recordRoot == null && templateRoot == null)
		{
			throw new JCoRecXMLParserException("Nothing to parse:" + "neither <" + JCoRecXMLConstants.TAGNAME_METADATA_RECORD_ROOT
					+ "> nor <" + JCoRecXMLConstants.TAGNAME_METADATA_TEMPLATE_ROOT + "> found in <" + metaDataRoot.getNodeName()
					+ ">");
		}

		parseRecords(recordRoot, repo, null);
		parseTemplates(templateRoot, repo);

	}

	/**
	 * Parses the {@link JCoFunctionTemplate} from the given DOM Element.
	 * 
	 * @param templateRoot
	 *           the Element to parse
	 * @param repo
	 *           the {@link JCoRecRepository} to put the {@link JCoFunctionTemplate JCoFunctionTemplates}
	 * @throws JCoRecXMLParserException
	 *            if an attribute is missing, or if parsing of the metadata fails.
	 */
	private void parseTemplates(final Element templateRoot, final JCoCustomRepository repo) throws JCoRecXMLParserException
	{
		if (templateRoot == null)
		{
			return;
		}
		Node currNode = templateRoot.getFirstChild();
		while (currNode != null)
		{
			if (currNode instanceof Element == false)
			{
				continue;
			}
			JCoFunctionTemplate template = null;
			final Node functionNameNode = currNode.getAttributes().getNamedItem(JCoRecXMLConstants.ATTNAME_FUNCTION_NAME);

			if (functionNameNode == null)
			{
				throw new JCoRecXMLParserException("Expected Attribute " + JCoRecXMLConstants.ATTNAME_FUNCTION_NAME + " in "
						+ currNode.getNodeName());
			}

			final String functionName = functionNameNode.getNodeValue();

			final JCoListMetaData imports = parseListMetaData((Element) currNode, JCoRecXMLConstants.TAGNAME_METADATA_INPUT,
					JCoRecXMLConstants.TAGNAME_IMPORT_PARAM);
			final JCoListMetaData exports = parseListMetaData((Element) currNode, JCoRecXMLConstants.TAGNAME_METADATA_OUTPUT,
					JCoRecXMLConstants.TAGNAME_EXPORT_PARAM);
			final JCoListMetaData changing = parseListMetaData((Element) currNode, JCoRecXMLConstants.TAGNAME_METADATA_CHANGING,
					JCoRecXMLConstants.TAGNAME_CHANGING_PARAM);
			final JCoListMetaData tables = parseListMetaData((Element) currNode, JCoRecXMLConstants.TAGNAME_METADATA_TABLE,
					JCoRecXMLConstants.TAGNAME_TABLE_PARAM);

			template = JCo.createFunctionTemplate(functionName, imports, exports, changing, tables, null);
			if (template != null)
			{
				repo.addFunctionTemplateToCache(template);
			}

			currNode = currNode.getNextSibling();
		}

	}

	/**
	 * Parses the {@link JCoListMetaData} from a given DOM Element.
	 * 
	 * @param templateNode
	 *           the Node to parse
	 * @param tagName
	 *           the tagname to parse
	 * @param paramName
	 *           defines whether this is an importing, exporting, changing or table parameterlist
	 * @return the parsed {@link JCoListMetaData}
	 * @throws JCoRecXMLParserException
	 *            if a child can't be retrieved, or if a metadata element is missing.
	 */
	private JCoListMetaData parseListMetaData(final Element templateNode, final String tagName, final String paramName)
			throws JCoRecXMLParserException
	{
		if (templateNode == null)
		{
			return null;
		}
		final Element parameterListNode = getChildElement(templateNode, tagName, true);


		final JCoListMetaData listMetaData = JCo.createListMetaData(paramName);
		final NodeList list = parameterListNode.getChildNodes();
		if (list.getLength() == 0)
		{
			return null;
		}
		for (int i = 0; i < list.getLength(); i++)
		{
			final Node currField = list.item(i);

			final NamedNodeMap attributes = currField.getAttributes();

			final Node fieldNameNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_FIELDNAME);
			final Node fieldRecordTypeNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_RECORDTYPE);
			final Node ucByteLengthNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_UC_BYTELENGTH);
			final Node nucByteLengthNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_NUC_BYTELENGTH);
			final Node fieldTypeNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_FIELDTYPE);

			if (fieldNameNode == null)
			{
				throw new JCoRecXMLParserException("Missing Attribute " + JCoRecXMLConstants.ATTNAME_METADATA_FIELDNAME + " in "
						+ currField.getNodeName());
			}
			if (fieldRecordTypeNode == null)
			{
				throw new JCoRecXMLParserException("Missing Attribute " + JCoRecXMLConstants.ATTNAME_METADATA_RECORDTYPE + " in "
						+ currField.getNodeName());
			}
			if (ucByteLengthNode == null)
			{
				throw new JCoRecXMLParserException("Missing Attribute " + JCoRecXMLConstants.ATTNAME_METADATA_UC_BYTELENGTH + " in "
						+ currField.getNodeName());
			}
			if (nucByteLengthNode == null)
			{
				throw new JCoRecXMLParserException("Missing Attribute " + JCoRecXMLConstants.ATTNAME_METADATA_NUC_BYTELENGTH + " in "
						+ currField.getNodeName());
			}


			final String fieldName = fieldNameNode.getNodeValue();
			final String fieldRecordType = fieldRecordTypeNode.getNodeValue();
			final int ucByteLength = Integer.parseInt(ucByteLengthNode.getNodeValue());
			final int nucByteLength = Integer.parseInt(nucByteLengthNode.getNodeValue());

			final int fieldType = fieldTypeNode == null ? 0 : Integer.parseInt(fieldTypeNode.getNodeValue());

			final Node nDecimals = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_DECIMALS);
			int decimals = 0;
			if (nDecimals != null)
			{
				decimals = Integer.parseInt(nDecimals.getNodeValue());
			}

			final Node descriptionNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_DESCRIPTION);
			String description;
			if (descriptionNode == null)
			{
				description = "DummyDescription";
			}
			else
			{
				description = descriptionNode.getNodeValue();
			}

			switch (fieldType)
			{
				case JCoRecordMetaData.TYPE_STRUCTURE:
				case JCoRecordMetaData.TYPE_TABLE:
					JCoRecordMetaData obj;
					try
					{
						final JCoRecordMetaData recordMetaData = repository.getRecordMetaData(fieldRecordType);

						if (recordMetaData == null)
						{
							throw new JCoRecXMLParserException("No RecordMetaData found for Table " + fieldName);
						}

						obj = JCo.createRecordMetaData(recordMetaData);

						listMetaData.add(fieldName, fieldType, nucByteLength, ucByteLength, decimals, " ", description,
								JCoListMetaData.OPTIONAL_PARAMETER, obj, null);
					}
					catch (final JCoException e)
					{
						throw new JCoRecXMLParserException("Cannot parse <" + currField.getNodeName() + "> in <"
								+ templateNode.getNodeName() + ">", e);
					}
					break;
				default:
					listMetaData.add(fieldName, fieldType, nucByteLength, ucByteLength, decimals, " ", description,
							JCoListMetaData.OPTIONAL_PARAMETER, fieldRecordType, null);
					break;
			}
		}
		listMetaData.lock();
		return listMetaData;
	}


	/**
	 * Parses single Records from a DOM Element.
	 * 
	 * @param recordRoot
	 *           the Element to parse from
	 * @param repo
	 *           the {@link JCoRecRepository} to append the records
	 * @param recordName
	 *           the name of the record to parse. If this is null all Records get parsed
	 * @throws JCoRecXMLParserException
	 *            if an unexpected attribute is found, or the parsing of the metadata failes.
	 */
	private void parseRecords(final Element recordRoot, final JCoCustomRepository repo, final String recordName)
			throws JCoRecXMLParserException
	{
		if (recordRoot == null)
		{
			return;
		}
		Node currNode = recordRoot.getFirstChild();
		while (currNode != null)
		{
			if (currNode instanceof Element == false)
			{
				continue;
			}
			if (parsedNodes.contains(currNode) == false)
			{
				final Node recordTypeNameNode = currNode.getAttributes().getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_FIELDNAME);
				if (recordTypeNameNode == null)
				{
					throw new JCoRecXMLParserException("Expected Attribute " + JCoRecXMLConstants.ATTNAME_METADATA_FIELDNAME + " in <"
							+ currNode.getNodeName() + ">");
				}

				final String recordTypeName = recordTypeNameNode.getNodeValue();
				if (recordName == null || recordTypeName.equals(recordName) == true)
				{
					final JCoRecordMetaData recordMetaData = JCo.createRecordMetaData(recordTypeName);
					parseRecordMetaData((Element) currNode, recordMetaData);
					repo.addRecordMetaDataToCache(recordMetaData);
					parsedNodes.add(currNode);
				}
			}
			currNode = currNode.getNextSibling();
		}
	}


	/**
	 * Retrieves the child element by its tag name.
	 * 
	 * @param parent
	 *           in this node will be searched.
	 * @param childName
	 *           the name of the searched child.
	 * @param raiseException
	 *           whether an exception should be thrown as soon as no child with the given name is found.
	 * 
	 * @return the child element or null if there is no such child element
	 * @throws JCoRecXMLParserException
	 *            if no child is found.
	 */
	private Element getChildElement(final Element parent, final String childName, final boolean raiseException)
			throws JCoRecXMLParserException
	{
		Node currChild = parent.getFirstChild();
		while (currChild != null)
		{
			if (currChild.getNodeName().equals(childName) == true && currChild instanceof Element)
			{
				return (Element) currChild;
			}
			currChild = currChild.getNextSibling();
		}
		if (raiseException)
		{
			throw new JCoRecXMLParserException("Expected <" + childName + "> in <" + parent.getNodeName() + ">");
		}
		else
		{
			return null;
		}
	}

	/**
	 * Parses the JCoMetaData of a Record.
	 * 
	 * @param currRecordMetaData
	 *           the metadata that should be parsed.
	 * @param jcoRecordMetaData
	 *           th metadata that should contain the parsed data afterwards.
	 * @throws JCoRecXMLParserException
	 *            if the content of the parsed metadata contains incomplete data.
	 */
	private void parseRecordMetaData(final Element currRecordMetaData, final JCoRecordMetaData jcoRecordMetaData)
			throws JCoRecXMLParserException
	{
		if (currRecordMetaData == null)
		{
			return;
		}
		final NodeList fields = currRecordMetaData.getChildNodes();

		int ucByteOffset = 0;
		int nucByteOffset = 0;
		for (int i = 0; i < fields.getLength(); i++)
		{
			final Node currField = fields.item(i);
			final NamedNodeMap attributes = currField.getAttributes();
			if (attributes == null)
			{
				throw new JCoRecRuntimeException("Expected an Element with Attributes but was: <" + currField.getNodeName()
						+ "> in <" + currRecordMetaData.getNodeName() + ">");
			}

			String description;
			String fieldName;
			String fieldRecordType;

			int ucByteLength;
			int nucByteLength;
			int fieldType;

			final Node descrptionNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_DESCRIPTION);
			final Node fieldNameNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_FIELDNAME);
			final Node fieldRecordTypeNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_RECORDTYPE);
			final Node ucByteLengthNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_UC_BYTELENGTH);
			final Node nucByteLengthNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_NUC_BYTELENGTH);
			final Node ucByteOffsetNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_UC_BYTELOFFSET);
			final Node nucByteOffsetNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_NUC_BYTEOFFSET);
			final Node fieldTypeNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_FIELDTYPE);

			fieldType = fieldTypeNode == null ? 0 : Integer.parseInt(fieldTypeNode.getNodeValue());

			if (fieldRecordTypeNode == null)
			{
				throw new JCoRecXMLParserException("Missing attribute in " + JCoRecXMLConstants.ATTNAME_METADATA_RECORDTYPE + " <"
						+ currRecordMetaData.getNodeName() + ">");
			}
			else if (nucByteLengthNode == null)
			{
				throw new JCoRecXMLParserException("Missing attribute in " + JCoRecXMLConstants.ATTNAME_METADATA_NUC_BYTELENGTH
						+ " <" + currRecordMetaData.getNodeName() + ">");
			}
			else if (ucByteLengthNode == null)
			{
				throw new JCoRecXMLParserException("Missing attribute in " + JCoRecXMLConstants.ATTNAME_METADATA_UC_BYTELENGTH + " <"
						+ currRecordMetaData.getNodeName() + ">");
			}
			else if (fieldNameNode == null)
			{
				throw new JCoRecXMLParserException("Missing attribute in " + JCoRecXMLConstants.ATTNAME_METADATA_FIELDNAME + " <"
						+ currRecordMetaData.getNodeName() + ">");
			}
			else
			{
				nucByteLength = Integer.parseInt(nucByteLengthNode.getNodeValue());
				ucByteLength = Integer.parseInt(ucByteLengthNode.getNodeValue());

				fieldName = fieldNameNode.getNodeValue();
				fieldRecordType = fieldRecordTypeNode.getNodeValue();

				if (nucByteOffsetNode != null && ucByteOffsetNode != null)
				{
					nucByteOffset = Integer.parseInt(nucByteOffsetNode.getNodeValue());
					ucByteOffset = Integer.parseInt(ucByteOffsetNode.getNodeValue());
				}

			}

			if (descrptionNode == null)
			{
				description = "JCoRecDummyDescription";
			}
			else
			{
				description = descrptionNode.getNodeValue();
			}

			final Node nDecimals = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_DECIMALS);
			int decimals = 0;
			if (nDecimals != null)
			{
				decimals = Integer.parseInt(nDecimals.getNodeValue());
			}

			if (fieldType == JCoRecordMetaData.TYPE_STRUCTURE || fieldType == JCoRecordMetaData.TYPE_TABLE)
			{
				//Nested Table or Structure
				JCoRecordMetaData obj;
				try
				{
					//get the nested RecordMetaData
					JCoRecordMetaData inner = repository.getRecordMetaData(fieldRecordType);
					if (inner == null)
					{
						//nested RecordMetaData have not been parsed yet
						//parse the nested RecordMetaData first
						parseRecords((Element) currRecordMetaData.getParentNode(), repository, fieldRecordType);

						//retrieve the nested RecordMetaData (that have just been parsed)
						inner = repository.getRecordMetaData(fieldRecordType);

						if (inner == null)
						{
							//nested RecordMetaData is not available
							throw new JCoRecXMLParserException("No MetaData for Record " + fieldRecordType + " found (nested Record in "
									+ fieldName + ")");
						}
					}
					obj = JCo.createRecordMetaData(inner);
					jcoRecordMetaData.add(fieldName, fieldType, nucByteLength, nucByteOffset, ucByteLength, ucByteOffset, decimals,
							description, obj, null);
				}
				catch (final JCoException e)
				{
					throw new JCoRecXMLParserException("Cannot parse Node <" + currField.getNodeName() + "> in <"
							+ currRecordMetaData.getNodeName() + ">", e);
				}

			}
			else
			{
				jcoRecordMetaData.add(fieldName, fieldType, nucByteLength, nucByteOffset, ucByteLength, ucByteOffset, decimals,
						description, fieldRecordType, null);
			}
			ucByteOffset += ucByteLength;
			nucByteOffset += nucByteLength;
		}


		final NamedNodeMap attributes = currRecordMetaData.getAttributes();
		final Node ucByteLengthNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_UC_BYTELENGTH);
		final Node nucByteLengthNode = attributes.getNamedItem(JCoRecXMLConstants.ATTNAME_METADATA_NUC_BYTELENGTH);
		if (ucByteLengthNode != null && nucByteLengthNode != null)
		{
			final int ucByteLength = Integer.parseInt(ucByteLengthNode.getNodeValue());
			final int nucByteLength = Integer.parseInt(nucByteLengthNode.getNodeValue());
			jcoRecordMetaData.setRecordLength(nucByteLength, ucByteLength);
		}
	}
}
