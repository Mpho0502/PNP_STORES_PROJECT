--PNP_STORES_HOMEWORK

--1. Create a database called PnPStore.

Create Database PNP_Stores
Go

--2. Upload 12 CSV files into database.

Select * FROM [PNP_STORES].[dbo].[1772032136184_pnp_sales_2025_01]
 
Select * FROM [PNP_STORES].[dbo].[1772032148926_pnp_sales_2025_02]

Select * FROM [PNP_STORES].[dbo].[1772032159369_pnp_sales_2025_03]

Select * FROM [PNP_STORES].[dbo].[1772032170316_pnp_sales_2025_04]

Select * FROM [PNP_STORES].[dbo].[1772032179739_pnp_sales_2025_05]

Select * FROM [PNP_STORES].[dbo].[1772032189879_pnp_sales_2025_06]

Select * FROM [PNP_STORES].[dbo].[1772032202072_pnp_sales_2025_07]

Select * FROM [PNP_STORES].[dbo].[1772032214258_pnp_sales_2025_08]

Select * FROM [PNP_STORES].[dbo].[1772032224900_pnp_sales_2025_09]

Select * FROM [PNP_STORES].[dbo].[1772032236969_pnp_sales_2025_10]

Select * FROM [PNP_STORES].[dbo].[1772032108507_pnp_sales_2025_11]

Select * FROM [PNP_STORES].[dbo].[1772032261154_pnp_sales_2025_12];

--3. Have a master table where all the data is combined.

--Data combination
CREATE VIEW MasterView AS
Select * FROM [PNP_STORES].[dbo].[1772032136184_pnp_sales_2025_01]
UNION ALL 
Select * FROM [PNP_STORES].[dbo].[1772032148926_pnp_sales_2025_02]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032159369_pnp_sales_2025_03]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032170316_pnp_sales_2025_04]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032179739_pnp_sales_2025_05]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032189879_pnp_sales_2025_06]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032202072_pnp_sales_2025_07]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032214258_pnp_sales_2025_08]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032224900_pnp_sales_2025_09]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032236969_pnp_sales_2025_10]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032108507_pnp_sales_2025_11]
UNION ALL
Select * FROM [PNP_STORES].[dbo].[1772032261154_pnp_sales_2025_12];

--Master table
SELECT [ProductID]
      ,[Barcode]
      ,[ProductName]
      ,[Category]
      ,[StoreID]
      ,[StoreName]
      ,[Province]
      ,[CashierName]
      ,[SaleDate]
      ,[Quantity]
      ,[UnitPrice]
      ,[TotalAmount]
  FROM [PNP_STORES].[dbo].[MasterView]

--4. Come up with own observations of weird things which you have seen in the data.

--5. Security: Create PnP Data Engineer, Data Analyst, Data Scientist, and Manager Accounts.

USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */

CREATE LOGIN [Ora_PnP_Data_Engineer] WITH PASSWORD=N'zIo3xCuN414OUOctk9vcGOHZQa+PY1HjupedPTm+UVs=', DEFAULT_DATABASE=[PNP_STORES], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO

CREATE LOGIN [Mpho_PnP_Data_Analyst] WITH PASSWORD=N'OhG/JtCeF7mt1XCQDUDCmA14TM0//WV9pp04AYnTS5I=', DEFAULT_DATABASE=[PNP_STORES], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO

CREATE LOGIN [Enid_PnP_Data_Scientist] WITH PASSWORD=N'ousPsbGIjKPYJzmnoOSHTpRy35y5Eofk8RWjjkus07s=', DEFAULT_DATABASE=[PNP_STORES], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO

CREATE LOGIN [Mat_PnP_Manager] WITH PASSWORD=N'UogacYoXpsHB8Wr1zNuYuzUkqPi4UBW49r4mHWYqp2Q=', DEFAULT_DATABASE=[PNP_STORES], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO