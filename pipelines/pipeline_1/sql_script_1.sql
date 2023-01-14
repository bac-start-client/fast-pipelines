SELECT
    sales_date,
    SUM(sales_amount)
FROM transactions t
GROUP BY sales_date;

-- assume that as system receives new data in source s3 bucket, it is very possible for yesterdays
-- total sales amount to now change (probs increase)
-- systems should be able to upsert that correctly.