var express = require('express');
var router = express.Router();
var jwt = require('express-jwt');
var auth = jwt({
  secret: process.env.JWT_SECRET,
  userProperty: 'payload'
});

var ctrlWQ = require('../controllers/waterQuality');
var ctrlAuth = require('../controllers/authentication');
var logging = require('../controllers/logging');
var lookup = require('../controllers/lookupInformation');

/* water quality apis */
router.post('/createNewSession',                                                    ctrlWQ.createNewSession);
router.get('/getLabSessionsOverview', ctrlWQ.getLabSessionsOverview);
router.get('/getSamplesForSession/:lab_id/:session_number',                         ctrlWQ.getSamplesForSession);
// gets both inSitu and Nutrient
router.get('/getSamplesForSessionOnDate/:lab_id/:session_number/:the_date',         ctrlWQ.getSamplesForSessionOnDate);
router.get('/getInSituSamplesForSessionOnDate/:lab_id/:session_number/:the_date',   ctrlWQ.getInSituSamplesForSessionOnDate);
router.get('/getNutrientSamplesForSessionOnDate/:lab_id/:session_number/:the_date', ctrlWQ.getNutrientSamplesForSessionOnDate);
router.get('/getMaxSessionNumbersForLabs',                                          ctrlWQ.getMaxSessionNumbersForLabs);
router.get('/isSessionNumberInUseForLab/:lab_id/:session_number',                   ctrlWQ.isSessionNumberInUseForLab);
router.get('/isFirstSampleDayInUseForLab/:lab_id/:first_sample_day',                ctrlWQ.isFirstSampleDayInUseForLab);
router.put('/updateOneSample',                                                      ctrlWQ.updateOneSample);


/* authentication */
router.post('/login', ctrlAuth.login);
router.post('/setPassword', auth, ctrlAuth.setPassword);
//router.post('/createNewUser', auth, ctrlAuth.createNewUser);
router.post('/createNewUser', ctrlAuth.createNewUser);
//router.get('/isValidPassword/:user_id/:password', ctrlAuth.isValidPassword);

// lookup information
router.get('/getLabs', lookup.getLabs);
router.get('/getMeasurementPrecision', lookup.getMeasurementPrecision);


// logging
router.post('/insertLogMessage', auth, logging.insertLogMessage);



module.exports = router;
