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
package de.hybris.platform.sap.orderexchange.outbound.impl;

import de.hybris.platform.core.model.c2l.LanguageModel;
import de.hybris.platform.core.model.order.AbstractOrderEntryModel;
import de.hybris.platform.core.model.order.OrderModel;
import de.hybris.platform.sap.orderexchange.constants.OrderCsvColumns;
import de.hybris.platform.sap.orderexchange.constants.OrderEntryCsvColumns;
import de.hybris.platform.sap.orderexchange.outbound.RawItemContributor;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;


/**
 * Builds the Row map for the CSV files for the Order Entry
 */
public class DefaultOrderEntryContributor implements RawItemContributor<OrderModel>
{

	@Override
	public Set<String> getColumns()
	{
		return new HashSet<>(Arrays.asList(OrderCsvColumns.ORDER_ID, OrderEntryCsvColumns.ENTRY_NUMBER,
				OrderEntryCsvColumns.QUANTITY, OrderEntryCsvColumns.REJECTION_REASON, OrderEntryCsvColumns.NAMED_DELIVERY_DATE,
				OrderEntryCsvColumns.ENTRY_UNIT_CODE, OrderEntryCsvColumns.PRODUCT_CODE, OrderEntryCsvColumns.PRODUCT_NAME));
	}

	@Override
	public List<Map<String, Object>> createRows(final OrderModel order)
	{
		final List<AbstractOrderEntryModel> entries = order.getEntries();
		final List<Map<String, Object>> result = new ArrayList<>();

		for (final AbstractOrderEntryModel entry : entries)
		{
			final Map<String, Object> row = new HashMap<>();
			row.put(OrderCsvColumns.ORDER_ID, order.getCode());
			row.put(OrderEntryCsvColumns.ENTRY_NUMBER, entry.getEntryNumber());
			row.put(OrderEntryCsvColumns.QUANTITY, entry.getQuantity());
			row.put(OrderEntryCsvColumns.ENTRY_UNIT_CODE, entry.getProduct().getUnit().getCode());
			row.put(OrderEntryCsvColumns.PRODUCT_CODE, entry.getProduct().getCode());

			String language = order.getLanguage().getIsocode();
			String shortText = determineItemShortText(entry, language);

			if (shortText.isEmpty())
			{
				final List<LanguageModel> fallbackLanguages = order.getLanguage().getFallbackLanguages();
				if (!fallbackLanguages.isEmpty())
				{
					language = fallbackLanguages.get(0).getIsocode();
					shortText = determineItemShortText(entry, language);
				}
			}
			row.put(OrderEntryCsvColumns.PRODUCT_NAME, shortText);

			result.add(row);
		}
		return result;
	}

	protected String determineItemShortText(final AbstractOrderEntryModel item, final String language)
	{
		final String shortText = item.getProduct().getName(new java.util.Locale(language));
		return shortText == null ? "" : shortText;
	}

}
