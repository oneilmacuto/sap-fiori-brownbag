sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sapfioriapp/sapfioriapp/test/integration/FirstJourney',
		'sapfioriapp/sapfioriapp/test/integration/pages/ItemsList',
		'sapfioriapp/sapfioriapp/test/integration/pages/ItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ItemsList, ItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sapfioriapp/sapfioriapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheItemsList: ItemsList,
					onTheItemsObjectPage: ItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);