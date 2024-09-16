sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sapfiorilistapp/sapfioribrownbagapp/test/integration/FirstJourney',
		'sapfiorilistapp/sapfioribrownbagapp/test/integration/pages/ItemsList',
		'sapfiorilistapp/sapfioribrownbagapp/test/integration/pages/ItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ItemsList, ItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sapfiorilistapp/sapfioribrownbagapp') + '/index.html'
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