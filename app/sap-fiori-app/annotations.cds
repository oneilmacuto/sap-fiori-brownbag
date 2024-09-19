using CatalogService as service from '../../srv/cat-service';

// UI-level annotations
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
            Label : 'Item Name',
            Value : ItemName,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width: '100%'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Item Description',
            Value : ItemDescription,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width: '100%'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Expiration Date',
            Value : ListingExpDate,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width: '100%'
            },
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : Status,
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width: '100%'
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
            Value : Seller.SellerName,
            Label: 'Seller Name',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : Seller.Region,
            Label: 'Region Code',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : Category.Category,
            Label: 'Category',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
        {
            $Type : 'UI.DataField',
            Value : Category.CategoryDescription,
            Label: 'Category Description',
            ![@HTML5.CssDefaults] : {
                $Type : 'HTML5.CssDefaultsType',
                width : '100%',
            },
        },
    ],
    UI.SelectionFields  : [
        Category_Category,
        Seller_SellerName,
        Status,
    ],

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
    Status @Common.ValueListWithFixedValues;
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
            }
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
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'JoiningDate',
            },
        ],
    };
    Seller @title : 'Seller'
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

annotate service.Categories with {
    Category @title : 'Category Name';
    CategoryDescription @title : 'Description'
};

annotate service.Seller with {
    SellerName @title : 'Seller Name';
    SellerDescription @title : 'Description';
    Region @title : 'Region';
    JoiningDate @title : 'Joining Date';
};

