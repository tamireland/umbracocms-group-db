CREATE TABLE [dbo].[Customer] (
    [CustomerID]     NCHAR (10) NOT NULL,
    [FirstNames]     NCHAR (50) NULL,
    [KnownAs]        NCHAR (50) NULL,
    [LastName]       NCHAR (50) NULL,
    [DateOfBirth]    DATE       NULL,
    [Picture]        IMAGE      NULL,
    [LandlineNumber] NCHAR (15) NULL,
    [MobileNumber]   NCHAR (15) NULL,
    [EmailAddress]   NCHAR (30) NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

