namespace db;
using { managed, cuid } from '@sap/cds/common';

entity Items : managed, cuid {
    key UUID: UUID;
    ItemName: String;
    ItemDescription: String;
    ListingExpDate: String;
    Status: String;
    InStock: Integer;
    Category: Association to Categories;
    Seller: Association to Seller;
    CountryOrigin: Association to Countries;
    TotalSales: Integer;
    SalesPastMonth: Integer;
}

entity Categories : managed {
    key Category : String;
    CategoryDescription: String;
    CategoryRank: String;
}

entity Seller : managed {
    key SellerName : String;
    SellerDescription: String;
    Region: String;
    JoiningDate: String;
}

entity Countries : managed {
    key Country : String;
    CategoryDescription: String;
    DistributionCapital: String;
    Curency: String;
    HQLocation: String;
}

entity Status : managed {
    StatusId: Integer;
    key StatusName: String;
}

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
}
