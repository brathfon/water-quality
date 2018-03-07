var express = require('express');
var router = express.Router();

var ctrlSampleCollecting = require('../controllers/sampleCollecting');
var ctrlAuth             = require('../controllers/authentication');

/* GET home page for right now. */
router.get('/login', ctrlAuth.login);
router.post('/executeLogin', ctrlAuth.executeLogin);

//router.get('/bs', ctrlSampleCollecting.bs);
//router.get('/', ctrlSampleCollecting.labSessionsOverview2);

router.get('/', ctrlSampleCollecting.labSessionsOverview);
router.get('/createNewSession',                                              ctrlSampleCollecting.createNewSession);  // this is the page for creating a new session
router.post('/executeCreateNewSession',                                      ctrlSampleCollecting.executeCreateNewSession);
router.post('/executeEditSamplesOnDate',                                     ctrlSampleCollecting.executeEditSamplesOnDate);
router.get('/editSamplesOnDate/:labId/:sessionNumber/:labLongName/:theDate', ctrlSampleCollecting.editSamplesOnDate);
router.get('/labSessionsOverview',                                           ctrlSampleCollecting.labSessionsOverview);
router.get('/samplesForSession/:labId/:sessionNumber/:labLongName',          ctrlSampleCollecting.samplesForSession);

module.exports = router;
