// package customer.logisticaldemand.handlers;

// import org.slf4j.Logger;
// import org.slf4j.LoggerFactory;
// import org.springframework.beans.factory.annotation.Qualifier;
// import org.springframework.stereotype.Component;

// import com.sap.cds.services.handler.EventHandler;
// import com.sap.cds.services.handler.annotations.ServiceName;
// import com.sap.cds.services.persistence.PersistenceService;

// import cds.gen.api_business_partner.ApiBusinessPartner;
// import cds.gen.api_business_partner.ApiBusinessPartner_;
// import cds.gen.demandsservice.*;

// @Component
// @ServiceName(DemandsService_.CDS_NAME)
// public class DemandServiceHandler implements EventHandler {
    
//     private final static Logger logger = LoggerFactory.getLogger(DemandServiceHandler.class);

// 	// We are mashing up the AdminService with two other services...
// 	private final PersistenceService db;
// 	private final ApiBusinessPartner bupa;

// 	DemandServiceHandler(PersistenceService db, @Qualifier(ApiBusinessPartner_.CDS_NAME) ApiBusinessPartner bupa) {
// 		this.db = db;
// 		this.bupa = bupa;
// 	}

// }
