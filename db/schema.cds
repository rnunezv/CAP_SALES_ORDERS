namespace com.sales;

using {
    cuid,
    managed
} from '@sap/cds/common';


/* Entidades */

// Header
entity Header : cuid, managed {
    Email        : String(30);
    FirstName    : String(30);
    LastName     : String(30);
    Country      : String(30);
    Creation     : Date;
    DeliveryDate : DateTime;
    OrderStatus  : Integer;
    ImageUrl     : String;
    toItem       : Composition of many Items
                       on toItem.Header = $self;
};

// Items
entity Items : cuid {
    Name             : String(40);
    Description      : String(40);
    ReleaseDate      : Date;
    DiscontinuedDate : Date;
    Price            : Decimal(12, 2);
    Height           : Decimal(15, 3);
    Width            : Decimal(13, 3);
    Depth            : Decimal(12, 2);
    Quantity         : Decimal(16, 2);
    UnitOfMeasure    : String(5);
    Header           : Composition of Header;
};
