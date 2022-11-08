using app.cat from '../db/schema';

service CatalogService @(requires : 'authenticated-user') {
    entity Categories @(Capabilities : {
        DeleteRestrictions : {Deletable : true},
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
    }) as projection on cat.Categories {
        *,
    };

    entity Products @(Capabilities : {
        DeleteRestrictions : {Deletable : true},
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
    }) as projection on cat.Products {
        *,
    };

    entity Orders @(Capabilities : {
        DeleteRestrictions : {Deletable : true},
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
    }) as projection on cat.Orders {
        *,
    };

    function Count() returns Integer;
}

annotate CatalogService.Products with
@restrict : [
    {
        grant : '*',
        to    : 'CatalogOwner'
    },
    {
        grant : 'READ',
        to    : 'CatalogViewer'
    }
];
