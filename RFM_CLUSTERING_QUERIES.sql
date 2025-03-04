Alter table orders
alter column invoiceno type VARCHAR(20);

copy orders from '/Users/siavashbakhtiari/OnlineRetail.csv'
DELIMITER ','
CSV HEADER NULL 'NA';

Alter table orders
alter column customerid type VARCHAR(30);

select * from orders
SELECT usename FROM pg_catalog.pg_user;
SELECT usename, passwd FROM pg_catalog.pg_shadow;
ALTER USER postgres WITH PASSWORD 'faranak123';

ALTER TABLE rfm_table
           ADD COLUMN Recency INTEGER,
           ADD COLUMN Frequency INTEGER,
		   ADD COLUMN Monetary FLOAT, 
		   ADD COLUMN R VARCHAR(2),
		   ADD COLUMN F VARCHAR(2),
		   ADD COLUMN M VARCHAR(2);


select * from rfm_table

--howmany clusters we have:
SELECT DISTINCT kmeans_cluster AS number_clusters
FROM rfm_table;

--howmany customers belongs to each clusters:
SELECT kmeans_cluster, COUNT(*) AS num_customers
FROM rfm_table
GROUP BY kmeans_cluster
ORDER BY num_customers DESC;

--analyze how category of R is distributed across the clusters.
SELECT kmeans_cluster, "R" , COUNT(*) AS count
FROM rfm_table
GROUP BY kmeans_cluster, "R"
ORDER BY kmeans_cluster, count DESC;


ALTER TABLE rfm_table
ALTER COLUMN customerid TYPE varchar(30);

SELECT 
    o.invoiceno,           -- From the orders table
    o.customerid,        -- From the orders table
    o.invoicedate,         -- From the orders table
    r.kmeans_cluster,     -- From the rfm_table
    r.Recency,            -- From the rfm_table
    r.Frequency,          -- From the rfm_table
    r.Monetary            -- From the rfm_table
FROM 
    orders o              -- Aliased as "o" for orders table
JOIN 
    rfm_table r           -- Aliased as "r" for rfm_table
    ON o.customerid = r.customerid  -- Join condition on customer_id
ORDER BY 
    o.invoicedate DESC;    -- Optional, depending on how you want to order the result



