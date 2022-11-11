using app.cat from '../db/schema';

service CatalogService @(requires : 'authenticated-user') {
    entity Categories @(restrict : [
        {
            grant : '*',
            to    : 'CatalogOwner'
        },
        {
            grant : 'READ',
            to    : 'CatalogViewer'
        }
    ]) as projection on cat.Categories;
    entity Products @(restrict : [
        {
            grant : '*',
            to    : 'CatalogOwner'
        },
        {
            grant : 'READ',
            to    : 'CatalogViewer'
        }
    ]) as projection on cat.Products;
    entity Orders @(restrict : [
        {
            grant : '*',
            to    : 'CatalogOwner'
        },
        {
            grant : 'READ',
            to    : 'CatalogViewer'
        }
    ]) as projection on cat.Orders;

    action   wf @(requires: 'CatalogOwner') (Order : Orders);
    function Count() returns Integer;
}

