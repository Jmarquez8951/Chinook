select top 1 i.BillingCountry Country, sum(i.Total) [Total amount bought]
from Invoice i
group by i.BillingCountry
order by [Total amount bought] desc
