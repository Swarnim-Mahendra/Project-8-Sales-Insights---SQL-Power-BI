use sales
SELECT * FROM sales.date
SELECT * FROM sales.transactions
where market_code="Mark001";
select * from sales.transactions where currency="USD";

##Below code not working

select * from t.transactions , d.date
inner join d.date on t.transactions.order_date=d.date.date where d.date.year=2020;


select distinct product_code from transactions where market_code='Mark001';
select * from transactions;
select * from transactions where sales_amount<=0;
select distinct (transactions.currency) from transactions;
'INR'
'INR\r'
'USD\r'
'USD'
select count(*) from transactions where transactions.currency='INR\r';
select count(*) from transactions where transactions.currency='USD\r';

# Total revenue of the year 2020

select sum(transactions.sales_qty) from transactions 
inner join date on transactions.order_date=date.date
where date.year=2020 and transactions.currency='INR\r' or transactions.currency='USD\r';

# Total revenue of Jan 2020

select sum(transactions.sales_amount) from transactions inner join date on transactions.order_date=date.date where year=2020
and date.month_name="January" and (transactions.currency='INR\r' or transactions.currency='USD\r');

# Total revenue of chennai in the year 2020

select sum(transactions.sales_amount) from transactions inner join date on transactions.order_date=date.date where date.year=2020
and transactions.market_code="mark001";

