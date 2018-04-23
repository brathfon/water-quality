var createSimpleErrorMsg = function(title, level) {
  var errorMsg = {};
  errorMsg['title'] = title;
  errorMsg['level'] = level;
  errorMsg['text']  = [];
  return errorMsg;
};

export {createSimpleErrorMsg};
