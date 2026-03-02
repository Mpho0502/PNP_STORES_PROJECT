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

-- Barcode 6009803567890, Coca Cola 2L, appears in all the stores from the 7 provinces
-- 2 provinces missing: mpumalanga and free state
-- Ayanda Zulu works in every province
-- Refilwe Maseko works in every province
-- Barcode 6001012345678, Danone Yogurt 1kg, is in every store
-- Staples: Tastic Rice 2kg, Snowflake Cake Flour 2.5kg, Iwisa Maize Meal 5kg, each use a barcode that is repetitive in all stores
-- Beverages: Ricoffy 750g,Liqui Fruit Orange Juice 1L,Five Roses Tea 100 Bags, each use a barcode that is repetitive in all stores
-- Dairy; Clover Full Cream Milk 2L,Eggs Large 18 Pack, Danone Yogurt 1kg, do not have the same unit price in different stores

--5. Security: Create PnP Data Engineer, Data Analyst, Data Scientist, and Manager Accounts.

CREATE LOGIN 
 [Ora_PnP_Data_Engineer]
,[Mpho_PnP_Data_Analyst]
,[Enid_PnP_Data_Scientist] 
,[Mat_PnP_Manager] 
Go