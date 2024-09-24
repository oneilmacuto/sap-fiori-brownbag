const cds = require("@sap/cds");

module.exports = cds.service.impl(async function() {
    this.after('READ', 'Items', itemsData => {
        console.log(itemsData);
        itemsData.forEach(item => {
            if (item.Status !== "Active") {
                item.StatusCriticality = 1;
            } else {
                item.StatusCriticality = 3;
            }
        })
    })
    this.after('CREATE', 'Items', itemsData => {
        // additional logic

    })
    this.on('DELETE', 'Items', itemsData => {
        
    })
})