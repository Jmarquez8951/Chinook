select i.BillingCountry Country, sum(i.Total) [Total amount bought]
from Invoice i
group by i.BillingCountry
