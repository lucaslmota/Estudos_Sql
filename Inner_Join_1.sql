SELECT 
    ProductKey,
    ProductName,
    dps.ProductSubcategoryKey,
    dps.ProductSubcategoryName,
    dps.ProductCategoryKey,
    dpc.ProductCategoryName


FROM DimProduct dp

INNER JOIN DimProductSubcategory dps
    ON dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
INNER JOIN DimProductCategory dpc
    ON dp.ProductSubcategoryKey = dpc.ProductCategoryKey