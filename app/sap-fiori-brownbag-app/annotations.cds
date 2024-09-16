using CatalogService as service from '../../srv/cat-service';
// UI-level annotations
annotate service.Items with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Item Name',
                Value : ItemName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Item Description',
                Value : ItemDescription,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Expiration Date',
                Value : ListingExpDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'In Stock',
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
                Label : 'Total Sales',
                Value : TotalSales,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sales Past Month',
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
            Label : 'Item Name',
            Value : ItemName,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Item Description',
            Value : ItemDescription,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Expiration Date',
            Value : ListingExpDate,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : Status,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'In Stock',
            Value : InStock,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : Category.Category,
            Label : 'Category',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : Seller.Region,
            Label : 'Seller Region',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : CountryOrigin.Country,
            Label : 'Country',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
    ],
    UI.SelectionFields : [
        Status,
        Category_Category,
        Seller_SellerName,
        CountryOrigin_Country,
        ListingExpDate
    ]
);

// Field-level annotations
annotate service.Items with {
    Status @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Status',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Status,
                ValueListProperty : 'StatusName',
            },
        ],
    };
    Status @Common.ValueListWithFixedValues 
};


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
    };
    Category @title : 'Category'
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
            }
        ],
    };
    Seller @title : 'Seller Name'
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
    };
    CountryOrigin @title : 'Country'
};

annotate service.Categories with {
    CategoryDescription @title : 'Category Description';
    CategoryRank @title : 'Category Rank'
};

annotate service.Seller with {
    SellerName @title : 'Seller Name';
    SellerDescription @title : 'Seller Description';
    JoiningDate @title : 'Joining Date';
    Region @title : 'Region';
};


annotate service.Items with @Capabilities : {
    FilterRestrictions : {
        $Type              : 'Capabilities.FilterRestrictionsType',
        FilterExpressionRestrictions : [
            {
                $Type : 'Capabilities.FilterExpressionRestrictionType',
                Property : ListingExpDate,
                AllowedExpressions : 'SingleRange'
            }
        ]
    }
};