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
    @readonly entity Categories as projection on my.Categories;
    @readonly entity Seller as projection on my.Seller;
    @readonly entity Countries as projection on my.Countries;
    @readonly entity Status as projection on my.Status;
}
