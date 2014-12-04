/**
 * 
 */
package de.hybris.platform.sap.sapcarcommercefacades.order;

import de.hybris.platform.sap.sapcarintegration.data.CarOrderEntryData;
import de.hybris.platform.sap.sapcarintegration.data.CarOrderHistoryData;

import java.util.List;


/**
 * @author I827395
 * 
 */
public interface CarOrderConverter
{


	/**
	 * @param orderList
	 */
	void convertOrders(List<CarOrderHistoryData> orderList);

	/**
	 * @param order
	 */
	void convertOrder(CarOrderHistoryData order);

	/**
	 * @param orderEntries
	 */
	void convertOrderEntries(List<CarOrderEntryData> orderEntries);

}
