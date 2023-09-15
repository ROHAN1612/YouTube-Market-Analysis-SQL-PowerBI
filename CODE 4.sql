# 3. Top 8 Channel Types, sum views
Select
channel_type,
sum(`video views`) as total_views
From youtube_dataset.`global youtube statistics`
Group by 1
Order by 2 desc