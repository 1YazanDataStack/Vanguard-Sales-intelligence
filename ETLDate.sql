DECLARE @StartDate DATE = '2019-01-01';
DECLARE @EndDate DATE = '2022-12-31';
DECLARE @CurrentDate DATE = @StartDate;

WHILE @CurrentDate <= @EndDate
BEGIN
    INSERT INTO DimDate (
        Date_key, 
        Date, 
        Day, 
        Dayname, 
        Month, 
        Monthname, 
        Year, 
        Quarter
    )
    VALUES (
        CAST(FORMAT(@CurrentDate, 'yyyyMMdd') AS INT),
        @CurrentDate,
        DAY(@CurrentDate),
        DATENAME(WEEKDAY, @CurrentDate),
        MONTH(@CurrentDate),
        DATENAME(MONTH, @CurrentDate),
        YEAR(@CurrentDate),
        DATEPART(QUARTER, @CurrentDate)
    );

    SET @CurrentDate = DATEADD(DAY, 1, @CurrentDate);
END;