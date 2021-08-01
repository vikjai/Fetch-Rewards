--•	When considering total number of items purchased from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?


SELECT rewardsReceiptStatus,avg(totalSpent) as 'average spend' 
from Receipts where rewardsReceiptStatus in ('Accepted','Rejected')
group by rewardsReceiptStatus
order by avg(totalSpent) desc