sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'demand/test/integration/FirstJourney',
		'demand/test/integration/pages/LogisticalDemandsList',
		'demand/test/integration/pages/LogisticalDemandsObjectPage',
		'demand/test/integration/pages/LogisticalDemandsItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, LogisticalDemandsList, LogisticalDemandsObjectPage, LogisticalDemandsItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('demand') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheLogisticalDemandsList: LogisticalDemandsList,
					onTheLogisticalDemandsObjectPage: LogisticalDemandsObjectPage,
					onTheLogisticalDemandsItemsObjectPage: LogisticalDemandsItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);