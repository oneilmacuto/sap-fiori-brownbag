using db as my from '../db/schema';

service CatalogService {
    @readonly entity Books as projection on my.Books;

    entity Items @(
        Capabilities : { 
            InsertRestrictions : {
                $Type : 'Capabilities.InsertRestrictionsType',
                Insertable,
            },
            UpdateRestrictions : {
                $Type : 'Capabilities.UpdateRestrictionsType',
                Updatable,
            },
            DeleteRestrictions : {
                $Type : 'Capabilities.DeleteRestrictionsType',
                Deletable,
            },
        },
    )
    as projection on my.Items;
    annotate Items with @odata.draft.enabled;
    entity Categories as projection on my.Categories;
    entity Seller as projection on my.Seller;
    entity Countries as projection on my.Countries;
    entity Status as projection on my.Status;
}
