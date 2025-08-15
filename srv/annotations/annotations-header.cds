using {SalesSRV as sales} from '../service';

annotate sales.Header with {
    Email        @title: 'Email';
    FirstName    @title: 'First Name';
    LastName     @title: 'Last Name';
    Country      @title: 'Country';
    Creation     @title: ' Creation Date';
    DeliveryDate @title: 'Delivery Date';
    OrderStatus  @title: 'Order Status';
    ImageUrl     @title: 'Image Url';
};


annotate sales.Header with @(

    UI.HeaderInfo: {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Order',
        TypeNamePlural: 'Orders',
        Title         : {
            $Type: 'UI.DataField',
            Value: FirstName,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: LastName,
        },
    },

    UI.LineItem  : [
        {
            $Type: 'UI.DataField',
            Value: FirstName,
        },

        {
            $Type: 'UI.DataField',
            Value: LastName,
        },

        {
            $Type: 'UI.DataField',
            Value: FirstName,
        },

        {
            $Type: 'UI.DataField',
            Value: Creation,
        },

        {
            $Type: 'UI.DataField',
            Value: OrderStatus,
        },

    ]
);
