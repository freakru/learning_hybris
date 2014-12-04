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
package de.hybris.platform.sap.core.configuration.rfc.impl;

import de.hybris.platform.sap.core.configuration.rfc.RFCDestination;
import de.hybris.platform.sap.core.configuration.rfc.RFCDestinationService;

import java.util.HashMap;
import java.util.Map;



/**
 * Default implementation which returns a RFC Destination.
 */
public class DefaultRFCDestinationService implements RFCDestinationService
{
	/**
	 * RFC Destinations.
	 */
	private Map<String, RFCDestination> rfcDestinations = new HashMap<String, RFCDestination>();

	/**
	 * Injection setter for RFCDestination map.
	 * 
	 * @param rfcDestinations
	 *           map of RFC destinations
	 */
	public void setRFCDestinations(final Map<String, RFCDestination> rfcDestinations)
	{
		this.rfcDestinations = rfcDestinations;
	}

	@Override
	public RFCDestination getRFCDestination(final String destinationName)
	{
		RFCDestination rfcDestination = rfcDestinations.get(destinationName);
		if (rfcDestination == null)
		{
			rfcDestination = new DefaultRFCDestination();
		}
		return rfcDestination;
	}

}
