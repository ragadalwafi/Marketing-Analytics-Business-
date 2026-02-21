SELECT
		[EngagementID],
		[ContentID],
		[CampaignID],
		[ProductID],
		UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,
      LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views,
	  Right(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined) - 1) AS Clicks,
	  [Likes],
	   FORMAT(CONVERT(Date ,EngagementDate), 'dd-MM-yyyy') AS EngagementDate
  FROM [MarketingAnalytics].[dbo].[engagement_data]
  WHERE 
		ContentType != 'Newsletter';
