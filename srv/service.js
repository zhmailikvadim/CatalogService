module.exports = srv => {
    const cds = require('@sap/cds');
    const { Models, Components, Adapters } = srv.entities
    srv.on('wf', async (req, d) => {
        try {
            const workflow = await cds.connect.to('workflowService');
            const { Order } = req.data;
            await workflow.tx(req).post('/', {
                "definitionId": "mcaf.approveProductOrder",
                "context": {
                    "Order": Order
                }
            });
        } catch (e) {
            console.log(e);
        }
    })
}