using {com.sap.ngl as my}  from '../db/schema';

service DemandsService {
    @odata.draft.enabled
    entity LogisticalDemands as projection on my.LogisticalDemands;
    entity LogisticalDemandsItems as projection on my.LogisticalDemandItems;
    @odata.draft.enabled
    entity FreightCosts as projection on my.FreightCosts;
}

using {CostService} from '@sap/freight_cost';
extend service FreightCostsService {
    entity FreightCosts as projection on my.FreightCosts;
}