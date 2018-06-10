
var lookupHelper = require('./lookupInformationHelper');

var createHuiAbvDateCode = function(hui_abv, the_date) {
  var parts = the_date.split("-");
  if (lookupHelper.isDate(the_date)) {
    var year = parts[0].substring(2,4);
    var month = parts[1];
    var day = parts[2];
    return hui_abv + year + month + day;
  }
  else {
    return hui_abv + '??????';
  }
};

var  stripeColor = function(index) {
    return (index % 2) === 0  ? "even-table-row" : "";
};

export {
  createHuiAbvDateCode,
  stripeColor
};
