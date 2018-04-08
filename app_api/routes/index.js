var express = require('express');
var router = express.Router();
var jwt = require('express-jwt');
var auth = jwt({
  secret: process.env.JWT_SECRET,
  userProperty: 'payload'
});

var ctrlWQ = require('../controllers/waterQuality');
var ctrlAuth = require('../controllers/authentication');

/* location apis */
router.post('/createNewSession',                                         ctrlWQ.createNewSession);
router.get('/getLabSessionsOverview', ctrlWQ.getLabSessionsOverview);
router.get('/getSamplesForSession/:labId/:sessionNumber',                ctrlWQ.getSamplesForSession);
router.get('/getSamplesForSessionOnDate/:labId/:sessionNumber/:theDate', ctrlWQ.getSamplesForSessionOnDate);
router.get('/getMaxSessionNumbersForLabs',                               ctrlWQ.getMaxSessionNumbersForLabs);
router.get('/getWorkersForSession/:labId/:sessionNumber',                ctrlWQ.getWorkersForSession);
router.put('/updateOneSample',                                           ctrlWQ.updateOneSample);

/* authentication */
router.post('/login', ctrlAuth.login);
router.post('/setPassword', auth, ctrlAuth.setPassword);
//router.post('/createNewWorker', auth, ctrlAuth.createNewWorker);
router.post('/createNewWorker', ctrlAuth.createNewWorker);
//router.get('/isValidPassword/:worker_id/:password', ctrlAuth.isValidPassword);


module.exports = router;
