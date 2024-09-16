using CatalogService as service from '../../srv/cat-service';
annotate service.Items with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ItemName',
                Value : ItemName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ItemDescription',
                Value : ItemDescription,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ListingExpDate',
                Value : ListingExpDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InStock',
                Value : InStock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Category_Category',
                Value : Category_Category,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Seller_SellerName',
                Value : Seller_SellerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CountryOrigin_Country',
                Value : CountryOrigin_Country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TotalSales',
                Value : TotalSales,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesPastMonth',
                Value : SalesPastMonth,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ItemName',
            Value : ItemName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ItemDescription',
            Value : ItemDescription,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ListingExpDate',
            Value : ListingExpDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : Status,
        },
        {
            $Type : 'UI.DataField',
            Label : 'InStock',
            Value : InStock,
        },
    ],
);

annotate service.Items with {
    Category @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Categories',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Category_Category,
                ValueListProperty : 'Category',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'CategoryDescription',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'CategoryRank',
            },
        ],
    }
};

annotate service.Items with {
    Seller @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Seller',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Seller_SellerName,
                ValueListProperty : 'SellerName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'SellerDescription',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Region',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'JoiningDate',
            },
        ],
    }
};

annotate service.Items with {
    CountryOrigin @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Countries',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : CountryOrigin_Country,
                ValueListProperty : 'Country',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'CategoryDescription',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'DistributionCapital',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Curency',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'HQLocation',
            },
        ],
    }
};

