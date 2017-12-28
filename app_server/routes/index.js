var express = require('express');
var router = express.Router();

var ctrlSampleCollecting = require('../controllers/sampleCollecting');

/* GET home page for right now. */
//router.get('/', ctrlSampleCollecting.sampleSession);

router.get('/', ctrlSampleCollecting.labSessionsOverview);
router.get('/labSessionsOverview', ctrlSampleCollecting.labSessionsOverview);
router.get('/samplesForSession/:labId/:sessionNumber/:labLongName', ctrlSampleCollecting.samplesForSession);
router.get('/createNewSession', ctrlSampleCollecting.createNewSession);  // this is the page for creating a new session
router.post('/executeCreateNewSession', ctrlSampleCollecting.executeCreateNewSession);

module.exports = router;
