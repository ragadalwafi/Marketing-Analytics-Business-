SELECT
		[ReviewID],
		[CustomerID],
		[ProductID],
		[ReviewDate],
		[Rating],
		REPLACE(ReviewText,'  ',' ') AS ReviewText
  FROM [MarketingAnalytics].[dbo].[customer_reviews]
