var express = require('express');
var router = express.Router();

var ctrlWQ = require('../controllers/waterQuality');

/* location apis */
router.get('/getLabSessionsOverview', ctrlWQ.getLabSessionsOverview);
router.get('/getSamplesForSession/:labId/:sessionNumber', ctrlWQ.getSamplesForSession);
router.get('/getWorkersForSession/:labId/:sessionNumber', ctrlWQ.getWorkersForSession);
router.get('/getMaxSessionNumbersForLabs',                ctrlWQ.getMaxSessionNumbersForLabs);
router.post('/createNewSession',                          ctrlWQ.createNewSession);

module.exports = router;
