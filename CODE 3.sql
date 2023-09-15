
# 2. Top 8 Countries, pct pay
With country_pct as (
Select
Country,
round(sum(highest_yearly_earnings),0) as total_earnings
From youtube_dataset.`global youtube statistics`
Group by 1
Order by 2 desc
)

select
sum(total_earnings) as total_earnings,

round(1.0*sum(case when Country = 'United States' then total_earnings else 0 end)/nullif(sum(total_earnings),0)*100,2) as pct_us,

round(1.0*sum(case when Country = 'India' then total_earnings else 0 end)/nullif(sum(total_earnings),0)*100,2) as pct_india,
round(1.0*sum(case when Country = 'Brazil' then total_earnings else 0 end)/nullif(sum(total_earnings),0)*100,2) as pct_brazil,
round(1.0*sum(case when Country = 'South Korea' then total_earnings else 0 end)/nullif(sum(total_earnings),0)*100,2) as pct_southKorea,
round(1.0*sum(case when Country = 'United Kingdom' then total_earnings else 0 end)/nullif(sum(total_earnings),0)*100,2) as pct_uk,
round(1.0*sum(case when Country = 'Pakistan' then total_earnings else 0 end)/nullif(sum(total_earnings),0)*100,2) as pct_pakistan,
round(1.0*sum(case when Country = 'Argentina' then total_earnings else 0 end)/nullif(sum(total_earnings),0)*100,2) as pct_argentina,
round(1.0*sum(case when Country = 'Russia' then total_earnings else 0 end)/nullif(sum(total_earnings),0)*100,2) as pct_russia

from country_pct
;