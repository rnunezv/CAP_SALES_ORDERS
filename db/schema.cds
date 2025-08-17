namespace com.sales;

using {
    cuid,
    managed,
    sap.common.CodeList
} from '@sap/cds/common';


/* Entidades */

// Header
entity Header : cuid, managed {
    Email        : String(30);
    FirstName    : String(30);
    LastName     : String(30);
    Country      : String(30);
    CreateOn     : Date;
    DeliveryDate : DateTime;
    OrderStatus  : Association to OrderStatus;
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
    UnitOfMeasure    : String(5) default 'CM';
    Currency         : String(3) default 'USD';
    Header           : Composition of Header;
};



/* criticatily */
// 1 = Rojo
// 2 = Amarillo
// 3 = Verde
entity OrderStatus : CodeList {
    key code        : String(20) enum {
            Received = 'Received';
            InProgress = 'In Progress';
            Delivered = 'Delivered';
        };
        criticality : Int16;
};