using my.bookshop as my from '../db/data-model';

service CatalogService {
    entity Books as projection on my.Books;
}

annotate CatalogService.Books with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
        },
    ]
);