-- create view calendar

CREATE VIEW gold.calendar
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectadls1.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    ) as QUERY1


-- create view customer

CREATE VIEW gold.customer
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectadls1.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    ) as QUERY1



-- create view product

CREATE VIEW gold.product
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectadls1.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    ) as QUERY1


-- create view returns

CREATE VIEW gold.returns
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectadls1.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) as QUERY1


-- create view sales

CREATE VIEW gold.sales
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectadls1.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    ) as QUERY1



-- create view subcat

CREATE VIEW gold.subcat
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectadls1.blob.core.windows.net/silver/AdventureWorks_SubCategories/',
        FORMAT = 'PARQUET'
    ) as QUERY1



-- create view territories

CREATE VIEW gold.territories
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://azureprojectadls1.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) as QUERY1