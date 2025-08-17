using {SalesSRV as sales} from '../service';

annotate sales.Header with {
    Email        @title: 'Email';
    FirstName    @title: 'First Name';
    LastName     @title: 'Last Name';
    Country      @title: 'Country';
    CreateOn     @title: 'Create On';
    DeliveryDate @title: 'Delivery Date';
    OrderStatus  @title: 'Order Status';
    ImageUrl     @title: 'Image'  @UI.IsImageURL;
};


annotate sales.Header with {

    OrderStatus @Common: {
        Text           : OrderStatus.name,
        TextArrangement: #TextOnly,
    };
};


annotate sales.Header with @(

    UI.SelectionFields   : [
        FirstName,
        CreateOn,
        OrderStatus_code
    ],

    UI.HeaderInfo        : {
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

    UI.LineItem          : [
        {
            $Type                : 'UI.DataField',
            Value                : Email,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '15rem'
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : FirstName,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : LastName,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : Country,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : CreateOn,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : DeliveryDate,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : OrderStatus_code,
            Criticality          : OrderStatus.criticality,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : ImageUrl,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '5rem'
            },
        },

    ],

    UI.FieldGroup #GroupA: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: Email,
            },
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
                Value: Country,
            },
        ]
    },

    UI.FieldGroup #GroupB: {
        $Type: 'UI.FieldGroupType',
        Data : [

            {
                $Type: 'UI.DataField',
                Value: CreateOn,
            },
            {
                $Type: 'UI.DataField',
                Value: DeliveryDate,
            },
            {
                $Type: 'UI.DataField',
                Value: OrderStatus_code,
                Criticality: OrderStatus.criticality
            },
            {
                $Type: 'UI.DataField',
                Value: ImageUrl,
            },

        ]
    },

    UI.HeaderFacets      : [
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#GroupA',
            Label : ''
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#GroupB',
            Label : '',
        },

    ],

    UI.Facets            : [{
        $Type : 'UI.ReferenceFacet',
        Target: 'toItem/@UI.LineItem',
        Label : 'Items',
        ID    : ''
    }, ],
);
