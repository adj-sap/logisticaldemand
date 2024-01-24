using DemandsService as service from '../../srv/demandService';

annotate service.LogisticalDemands with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>LogisticsDemandId}',
            Value : logisticsDemandID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>LogisticalDemandType}',
            Value : logisticalDemandType,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>CompanyCode}',
            Value : companyCode,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>PurchasingOrganization}',
            Value : purchasingOrg,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>PurchasingGroup}',
            Value : purchasingGroup,
        },
    ]
);
annotate service.LogisticalDemands with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>LogisticsDemandId}',
                Value : logisticsDemandID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>LogisticalDemandType}',
                Value : logisticalDemandType,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>CompanyCode}',
                Value : companyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>PurchasingOrganization}',
                Value : purchasingOrg,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>PurchasingGroup}',
                Value : purchasingGroup,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Carrier}',
                Value : carrier,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>SourceLocation}',
                Value : sourceLocation,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>DestinationLocation}',
                Value : destinationLocation,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ArrivalDate}',
                Value : arrivalDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>DepartureDate}',
                Value : departureDate,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Order Items',
            ID : 'OrderItems',
            Target : 'to_demandItems/@UI.LineItem#OrderItems',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Freight Cost ',
            ID : 'FreightCost',
            Target : 'to_freightCost/@UI.LineItem#FreightCost',
        },
    ]
);
annotate service.LogisticalDemandsItems with @(
    UI.LineItem #OrderItems : [
        {
            $Type : 'UI.DataField',
            Value : itemNumber,
            Label : 'itemNumber',
        },
        {
            $Type : 'UI.DataField',
            Value : product,
            Label : 'product',
        },
        {
            $Type : 'UI.DataField',
            Value : grossWeight,
            Label : 'grossWeight',
        },
        {
            $Type : 'UI.DataField',
            Value : grossWeightUOM,
            Label : 'grossWeightUOM',
        },
        {
            $Type : 'UI.DataField',
            Value : referenceOrder,
            Label : 'referenceOrder',
        },
        {
            $Type : 'UI.DataField',
            Value : referenceOrderItem,
            Label : 'referenceOrderItem',
        },]
);
annotate service.FreightCosts with @(
    UI.LineItem #FreightCost : [
        {
            $Type : 'UI.DataField',
            Value : currency_code,
        },{
            $Type : 'UI.DataField',
            Value : grossAmount,
            Label : 'grossAmount',
        },{
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : netAmount,
            Label : 'netAmount',
        },]
);
annotate service.LogisticalDemands with @(
    UI.SelectionFields : [
        carrier,
        purchasingOrg,
    ]
);
annotate service.LogisticalDemands with {
    carrier @Common.Label : '{i18n>Carrier}'
};
annotate service.LogisticalDemands with {
    purchasingOrg @Common.Label : '{i18n>PurchasingOrganization}'
};
annotate service.LogisticalDemands with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : logisticsDemandID,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : logisticalDemandType,
        },
    }
);
annotate service.LogisticalDemands with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : logisticsDemandID,
                    Descending : false,
                },
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.LogisticalDemandsItems with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Order Items',
            ID : 'OrderItems',
            Target : '@UI.FieldGroup#OrderItems',
        },
    ],
    UI.FieldGroup #OrderItems : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : itemNumber,
                Label : 'itemNumber',
            },{
                $Type : 'UI.DataField',
                Value : product,
                Label : 'product',
            },{
                $Type : 'UI.DataField',
                Value : referenceOrder,
                Label : 'referenceOrder',
            },{
                $Type : 'UI.DataField',
                Value : referenceOrderItem,
                Label : 'referenceOrderItem',
            },{
                $Type : 'UI.DataField',
                Value : grossWeightUOM,
                Label : 'grossWeightUOM',
            },{
                $Type : 'UI.DataField',
                Value : grossWeight,
                Label : 'grossWeight',
            },],
    }
);
annotate service.FreightCosts with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Freight Header',
            ID : 'FreightCost',
            Target : '@UI.FieldGroup#FreightCost',
        },
    ],
    UI.FieldGroup #FreightCost : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : hostDocument,
                Label : 'hostDocument',
            },{
                $Type : 'UI.DataField',
                Value : netAmount,
                Label : 'netAmount',
            },{
                $Type : 'UI.DataField',
                Value : currency_code,
            },{
                $Type : 'UI.DataField',
                Value : grossAmount,
                Label : 'grossAmount',
            },{
                $Type : 'UI.DataField',
                Value : hostDocumentType,
                Label : 'hostDocumentType',
            },],
    }
);
