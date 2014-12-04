/*
 * [y] hybris Platform
 *
 * Copyright (c) 2000-2013 hybris AG
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of hybris
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with hybris.
 * 
 *  
 */
package de.hybris.platform.persistence;

import de.hybris.platform.jalo.Item;
import de.hybris.platform.jalo.JaloBusinessException;
import de.hybris.platform.jalo.SessionContext;
import de.hybris.platform.jalo.product.Unit;
import de.hybris.platform.jalo.type.ComposedType;


public class MyTestUnit extends Unit
{

	@Override
	protected Item createItem(final SessionContext ctx, final ComposedType type, final ItemAttributeMap allAttributes)
			throws JaloBusinessException
	{
		allAttributes.setAttributeMode(InitialAttributePersistenceTest.ATTRIBUTE_NAME, AttributeMode.INITIAL);
		return super.createItem(ctx, type, allAttributes);
	}

}
