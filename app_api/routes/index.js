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

/* water quality apis */
router.post('/createNewSession',                                         ctrlWQ.createNewSession);
router.get('/getLabSessionsOverview', ctrlWQ.getLabSessionsOverview);
router.get('/getSamplesForSession/:labId/:sessionNumber',                ctrlWQ.getSamplesForSession);
router.get('/getSamplesForSessionOnDate/:labId/:sessionNumber/:theDate', ctrlWQ.getSamplesForSessionOnDate);
router.get('/getMaxSessionNumbersForLabs',                               ctrlWQ.getMaxSessionNumbersForLabs);
router.get('/getWorkersForSession/:labId/:sessionNumber',                ctrlWQ.getWorkersForSession);
router.get('/getLabs',                                                   ctrlWQ.getLabs);
router.put('/updateOneSample',                                           ctrlWQ.updateOneSample);

/* authentication */
router.post('/login', ctrlAuth.login);
router.post('/setPassword', auth, ctrlAuth.setPassword);
//router.post('/createNewWorker', auth, ctrlAuth.createNewWorker);
router.post('/createNewWorker', ctrlAuth.createNewWorker);
//router.get('/isValidPassword/:worker_id/:password', ctrlAuth.isValidPassword);

// logging
router.post('/insertLogMessage', logging.insertLogMessage);



module.exports = router;
