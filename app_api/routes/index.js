var express = require('express');
var router = express.Router();

var ctrlWQ = require('../controllers/waterQuality');

/* location apis */
router.post('/createNewSession',                                         ctrlWQ.createNewSession);
router.get('/getLabSessionsOverview', ctrlWQ.getLabSessionsOverview);
router.get('/getSamplesForSession/:labId/:sessionNumber',                ctrlWQ.getSamplesForSession);
router.get('/getSamplesForSessionOnDate/:labId/:sessionNumber/:theDate', ctrlWQ.getSamplesForSessionOnDate);
router.get('/getMaxSessionNumbersForLabs',                               ctrlWQ.getMaxSessionNumbersForLabs);
router.get('/getWorkersForSession/:labId/:sessionNumber',                ctrlWQ.getWorkersForSession);
router.put('/updateOneSample',                                           ctrlWQ.updateOneSample);

module.exports = router;
