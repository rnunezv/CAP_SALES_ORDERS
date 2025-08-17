using {SalesSRV as sales} from '../service';


annotate sales.Items with {

    Name             @title: 'Name';
    Description      @title: 'Description';
    ReleaseDate      @title: 'Realease Date';
    DiscontinuedDate @title: 'Discontinued Date';
    Price            @title: 'Price'            @Measures.ISOCurrency: Currency;
    Height           @title: 'Height'           @Measures.Unit       : UnitOfMeasure;
    Width            @title: 'Width'            @Measures.Unit       : UnitOfMeasure;
    Depth            @title: 'Depth'            @Measures.Unit       : UnitOfMeasure;
    Quantity         @title: 'Quantity';
    UnitOfMeasure    @title: 'Unit Of Measure'  @Common.IsUnit;
    Currency         @Common.IsCurrency;
};


annotate sales.Items with @(

    UI.HeaderInfo       : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Item',
        TypeNamePlural: '',
        Title         : {
            $Type: 'UI.DataField',
            Value: Name
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: Description
        },
    },


    UI.LineItem         : [
        {
            $Type                : 'UI.DataField',
            Value                : Name,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : Description,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '30rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : ReleaseDate,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : DiscontinuedDate,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : Price,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '10rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : Height,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : Width,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : Depth,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem'
            },
        },

        {
            $Type                : 'UI.DataField',
            Value                : Quantity,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '5rem'
            },
        },

    ],


    UI.FieldGroup #ItemA: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: ReleaseDate,
            },
            {
                $Type: 'UI.DataField',
                Value: DiscontinuedDate,
            },
            {
                $Type: 'UI.DataField',
                Value: Price,
            },
            {
                $Type: 'UI.DataField',
                Value: Quantity,
            },
        ]
    },

    UI.FieldGroup #ItemB: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: Height,
            },
            {
                $Type: 'UI.DataField',
                Value: Width,
            },
            {
                $Type: 'UI.DataField',
                Value: Depth,
            },
        ]
    },

    UI.HeaderFacets     : [
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#ItemA',
            Label : ''
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target: '@UI.FieldGroup#ItemB',
            Label : ''
        },
    ],

);
