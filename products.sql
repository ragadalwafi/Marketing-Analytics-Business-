SELECT 
		[ProductID],
		[ProductName],
		[Price],

	CASE
		WHEN Price < 50 THEN 'Low'
		WHEN Price BETWEEN 50 and 200 THEN 'Medium'
		ELSE 'High'
	END AS PriceCategory
  FROM [MarketingAnalytics].[dbo].[products]
