select i.BillingCountry, sum(i.Total)
from Invoice i
group by i.BillingCountry
