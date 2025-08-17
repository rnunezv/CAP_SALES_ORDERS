using {SalesSRV as sales} from '../service';


annotate sales.Items with {

    Name             @title: 'Name';
    Description      @title: 'Description';
    ReleaseDate      @title: 'Realease Date';
    DiscontinuedDate @title: 'Discontinued Date';
    Price            @title: 'Price';
    Height           @title: 'Height';
    Width            @title: 'Width';
    Depth            @title: 'Depth';
    Quantity         @title: 'Quantity';
    UnitOfMeasure    @title: 'Unit Of Measure';
};


annotate sales.Items with @(

    UI.HeaderInfo      : {
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


    UI.LineItem        : [
        {
            $Type: 'UI.DataField',
            Value: Name,
        },

        {
            $Type: 'UI.DataField',
            Value: Description,
        },

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

        {
            $Type: 'UI.DataField',
            Value: Quantity,
        },

        {
            $Type: 'UI.DataField',
            Value: UnitOfMeasure,
        },
    ],


    UI.FieldGroup #Item: {
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
            {
                $Type: 'UI.DataField',
                Value: Quantity,
            },
            {
                $Type: 'UI.DataField',
                Value: UnitOfMeasure,
            },
        ]
    },

    UI.HeaderFacets    : [{
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup#Item',
        Label : ''
    }, ],

);
