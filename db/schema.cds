namespace com.sap.ngl;

using {cuid,managed} from '@sap/cds/common';
using {com.sap.ngl.FreightCosts} from '@sap/freight_cost';

entity LogisticalDemands : cuid,managed {
    logisticsDemandID : String(10) not null;
    logisticalDemandType : String(10);
    companyCode : String(4);
    purchasingOrg : String(4);
    purchasingGroup : String(3);
    carrier : String(10);
    sourceLocation : String(10);
    destinationLocation : String(10);
    arrivalDate : Date;
    departureDate : Date;
    to_freightCost : Association to many FreightCosts on to_freightCost.hostDocument = logisticsDemandID; 
    to_demandItems : composition of many LogisticalDemandItems on to_demandItems.parent = $self;
}

entity LogisticalDemandItems : cuid,managed {
    parent : Association to one LogisticalDemands not null;
    demandItemID : Integer;
    material : String(18);
    quantity : Decimal(13,3);
    unit : String(3);
}

