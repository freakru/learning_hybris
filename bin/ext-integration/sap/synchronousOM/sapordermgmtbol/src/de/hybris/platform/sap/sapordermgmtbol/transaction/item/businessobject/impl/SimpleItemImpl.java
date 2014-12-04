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
package de.hybris.platform.sap.sapordermgmtbol.transaction.item.businessobject.impl;

import de.hybris.platform.sap.core.bol.businessobject.BusinessObjectBase;
import de.hybris.platform.sap.core.common.TechKey;
import de.hybris.platform.sap.core.common.exceptions.ApplicationBaseRuntimeException;
import de.hybris.platform.sap.sapcommonbol.transaction.util.impl.PrettyPrinter;
import de.hybris.platform.sap.sapordermgmtbol.transaction.item.businessobject.interf.SimpleItem;

import java.math.BigDecimal;
import java.util.Map;



/**
 */
public class SimpleItemImpl extends BusinessObjectBase implements SimpleItem
{

	private boolean productChanged = false;
	private String productId;
	private TechKey productGuid;

	private TechKey parentId;
	private String description;
	private BigDecimal quantity;
	private String unit;

	private int numberInt;
	private BigDecimal lastQuantity;

	@Override
	public Object clone() throws CloneNotSupportedException
	{
		SimpleItem myClone;
		try
		{
			myClone = (SimpleItem) super.clone();
		}
		catch (final CloneNotSupportedException ex)
		{
			// should not happen, because we are clone able
			throw new ApplicationBaseRuntimeException(
					"Failed to clone Object, check whether Cloneable Interface is still implemented", ex);
		}
		return myClone;
	}

	@Override
	public String getProductId()
	{
		return productId;
	}

	/**
	 * Get the technical key for the productId of this item.
	 * 
	 * @return technical key for the productId
	 */
	@Override
	public TechKey getProductGuid()
	{
		return productGuid;
	}

	@Override
	public void setProductId(String productId)
	{
		if (productId != null)
		{
			productId = productId.trim();
		}

		final String oldProductId = getProductId();

		if (isProductChanged(productId, oldProductId))
		{
			setProductChanged(true);
		}

		this.productId = productId;
	}

	private boolean isProductChanged(final String product, final String oldProductId)
	{
		return (null != oldProductId) && !oldProductId.equalsIgnoreCase(product);
	}

	/**
     *
     */
	@Override
	public void setProductGuid(final TechKey productGuid)
	{
		this.productGuid = productGuid;
	}

	@Override
	public boolean isProductChanged()
	{
		return productChanged;
	}

	@Override
	public void setProductChanged(final boolean productChanged)
	{
		this.productChanged = productChanged;
	}

	/**
     *
     */
	@Override
	public TechKey getParentId()
	{
		return parentId;
	}

	/**
     *
     */
	@Override
	public void setParentId(final TechKey parentId)
	{
		this.parentId = parentId;
	}

	@Override
	public String getDescription()
	{
		String descr = description;
		if ((descr == null) || (descr.length() == 0))
		{
			descr = getProductId();
		}
		return descr;
	}

	@Override
	public BigDecimal getQuantity()
	{
		return quantity;
	}

	@Override
	public BigDecimal getLastQuantity()
	{
		return lastQuantity;
	}

	@Override
	public String getUnit()
	{
		return unit;
	}

	@Override
	public void setDescription(final String description)
	{
		this.description = description;
	}

	@Override
	public void setQuantity(final BigDecimal quantity)
	{
		lastQuantity = this.quantity;
		this.quantity = quantity;
	}

	/**
     *
     */
	@Override
	public void setUnit(final String unit)
	{
		this.unit = unit;
	}


	/**
	 * Set the internal number for the item. The internal number is the item number (Positionsnummer) displayed on the
	 * front end and generated by the backend system. In the default case the numbers are starting with 10 and increased
	 * by 10, e.g. 10, 20, 30, 40....
	 */
	@Override
	public void setNumberInt(final int number)
	{
		numberInt = number;
	}

	/**
	 * Get the internal number for the item. The internal number is the item number (Positionsnummer) displayed on the
	 * front end and generated by the backend system. In the default case the numbers are starting with 10 and increased
	 * by 10, e.g. 10, 20, 30, 40....
	 */
	@Override
	public int getNumberInt()
	{
		return numberInt;
	}

	// we don't get the map type safe from the backend
	@Override
	@SuppressWarnings("unchecked")
	public Map<String, Object> getTypedExtensionMap()
	{
		return getExtensionMap();
	}

	@Override
	public int compareTo(final SimpleItem item)
	{
		final Integer a = Integer.valueOf(getNumberInt());
		final Integer b = Integer.valueOf(item.getNumberInt());
		return a.compareTo(b);
	}

	@Override
	public String toString()
	{
		final PrettyPrinter pp = new PrettyPrinter(super.toString());
		pp.add(productId, "productId");
		pp.add(productGuid, "productGuid");
		pp.add(description, "description");
		pp.add(quantity, "quantity");
		pp.add(unit, "unit");
		pp.add(parentId, "parentId");
		pp.add(Boolean.valueOf(productChanged), "productChanged");
		pp.add(Integer.valueOf(numberInt), "numberInt");
		pp.add(lastQuantity, "lastQuantity");
		return pp.toString();
	}

}
