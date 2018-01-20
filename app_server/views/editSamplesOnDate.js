function template(locals) {
var jade_debug = [ new jade.DebugItem( 1, "editSamplesOnDate.jade" ) ];
try {
var buf = [];
var jade_mixins = {};
var jade_interp;
;var locals_for_with = (locals || {});(function (errors, labId, labLongName, levelClass, samples, sessionNumber, theDate, title, undefined) {
jade_debug.unshift(new jade.DebugItem( 0, "layout.jade" ));
jade_debug.unshift(new jade.DebugItem( 75, "_includes/sharedHTMLfunctions.jade" ));























jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 46, "_includes/sharedHTMLfunctions.jade" ));
jade_mixins["outputSessionDay"] = jade_interp = function(dayObj, labId, sessionNumber){
var block = (this && this.block), attributes = (this && this.attributes) || {};
jade_debug.unshift(new jade.DebugItem( 47, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 47, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div class=\"row\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 48, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div class=\"col-md-2\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 49, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<h3>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 49, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = dayObj.date) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</h3>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 50, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div class=\"col-md-4\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 51, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<a" + (jade.attr("href", "/editSamplesOnDate/" + (labId) + "/" + (sessionNumber) + "/" + (labLongName) + "/" + (dayObj.date) + "", true, false)) + " class=\"btn btn-sm btn-info\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 51, jade_debug[0].filename ));
buf.push("Edit This Day");
jade_debug.shift();
jade_debug.shift();
buf.push("</a>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 52, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div class=\"row\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 53, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div class=\"col-md-1\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 54, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<strong>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 54, jade_debug[0].filename ));
buf.push("Samplers:");
jade_debug.shift();
jade_debug.shift();
buf.push("</strong>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 55, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div class=\"col-md-11\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 56, "_includes/sharedHTMLfunctions.jade" ));
jade_mixins["samplersString"](dayObj.workers);
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 57, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div class=\"row\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 58, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div class=\"col-md-12\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 59, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<table class=\"table table-striped table-hover\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 60, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<thead>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 61, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<tr>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 62, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<th>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 62, jade_debug[0].filename ));
buf.push("Location Name");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 63, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 63, jade_debug[0].filename ));
buf.push("Time");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 64, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 64, jade_debug[0].filename ));
buf.push("Temp (C)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 65, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 65, jade_debug[0].filename ));
buf.push("Sal (ppt)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 66, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 66, jade_debug[0].filename ));
buf.push("DO (mg/L)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 67, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 67, jade_debug[0].filename ));
buf.push("DO Saturation (%)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 68, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 68, jade_debug[0].filename ));
buf.push("pH");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 69, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 69, jade_debug[0].filename ));
buf.push("Turbidity(NTU)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 70, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<th>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 70, jade_debug[0].filename ));
buf.push("Comments");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.shift();
buf.push("</tr>");
jade_debug.shift();
jade_debug.shift();
buf.push("</thead>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 71, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<tbody>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 72, "_includes/sharedHTMLfunctions.jade" ));
// iterate dayObj.samples
;(function(){
  var $$obj = dayObj.samples;
  if ('number' == typeof $$obj.length) {

    for (var $index = 0, $$l = $$obj.length; $index < $$l; $index++) {
      var sample = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 72, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 73, "_includes/sharedHTMLfunctions.jade" ));
jade_mixins["outputMeasurementsRow"](sample);
jade_debug.shift();
jade_debug.shift();
    }

  } else {
    var $$l = 0;
    for (var $index in $$obj) {
      $$l++;      var sample = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 72, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 73, "_includes/sharedHTMLfunctions.jade" ));
jade_mixins["outputMeasurementsRow"](sample);
jade_debug.shift();
jade_debug.shift();
    }

  }
}).call(this);

jade_debug.shift();
jade_debug.shift();
buf.push("</tbody>");
jade_debug.shift();
jade_debug.shift();
buf.push("</table>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
};
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 25, "_includes/sharedHTMLfunctions.jade" ));
jade_mixins["outputMeasurementsRow"] = jade_interp = function(sample){
var block = (this && this.block), attributes = (this && this.attributes) || {};
jade_debug.unshift(new jade.DebugItem( 26, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 26, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<tr>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 27, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 27, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.long_name) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 28, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td class=\"in-situ-table-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 28, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.time) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 29, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td class=\"in-situ-table-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 29, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.temperature) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 30, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td class=\"in-situ-table-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 30, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.salinity) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 31, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td class=\"in-situ-table-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 31, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.dissolved_oxygen) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 32, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td class=\"in-situ-table-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 32, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.dissolved_oxygen_pct) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 33, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td class=\"in-situ-table-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 33, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.ph) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 34, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 35, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<table class=\"in-situ-inner-table\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 36, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<tr>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 37, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 37, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.turbidity_1) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.shift();
buf.push("</tr>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 38, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<tr>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 39, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 39, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.turbidity_2) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.shift();
buf.push("</tr>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 40, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<tr>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 41, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 41, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.turbidity_3) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.shift();
buf.push("</tr>");
jade_debug.shift();
jade_debug.shift();
buf.push("</table>");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 42, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 42, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.comments) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.shift();
buf.push("</tr>");
jade_debug.shift();
jade_debug.shift();
};
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 13, "_includes/sharedHTMLfunctions.jade" ));
jade_mixins["samplersString"] = jade_interp = function(samplers){
var block = (this && this.block), attributes = (this && this.attributes) || {};
jade_debug.unshift(new jade.DebugItem( 14, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 14, "_includes/sharedHTMLfunctions.jade" ));
var samplerStr = "";
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 15, "_includes/sharedHTMLfunctions.jade" ));
var count = 0;
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 16, "_includes/sharedHTMLfunctions.jade" ));
// iterate samplers
;(function(){
  var $$obj = samplers;
  if ('number' == typeof $$obj.length) {

    for (var $index = 0, $$l = $$obj.length; $index < $$l; $index++) {
      var sampler = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 16, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 17, "_includes/sharedHTMLfunctions.jade" ));
samplerStr += sampler.first_name + " " + sampler.last_name;
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 18, "_includes/sharedHTMLfunctions.jade" ));
++count;
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 19, "_includes/sharedHTMLfunctions.jade" ));
if (count < samplers.length) {
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 20, "_includes/sharedHTMLfunctions.jade" ));
samplerStr += ", ";
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 21, "_includes/sharedHTMLfunctions.jade" ));
}
jade_debug.shift();
jade_debug.shift();
    }

  } else {
    var $$l = 0;
    for (var $index in $$obj) {
      $$l++;      var sampler = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 16, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 17, "_includes/sharedHTMLfunctions.jade" ));
samplerStr += sampler.first_name + " " + sampler.last_name;
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 18, "_includes/sharedHTMLfunctions.jade" ));
++count;
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 19, "_includes/sharedHTMLfunctions.jade" ));
if (count < samplers.length) {
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 20, "_includes/sharedHTMLfunctions.jade" ));
samplerStr += ", ";
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 21, "_includes/sharedHTMLfunctions.jade" ));
}
jade_debug.shift();
jade_debug.shift();
    }

  }
}).call(this);

jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 22, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div class=\"p text-left\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 22, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = samplerStr) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
};
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 5, "_includes/sharedHTMLfunctions.jade" ));
jade_mixins["outputErrors"] = jade_interp = function(errors){
var block = (this && this.block), attributes = (this && this.attributes) || {};
jade_debug.unshift(new jade.DebugItem( 6, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 6, "_includes/sharedHTMLfunctions.jade" ));
// iterate errors
;(function(){
  var $$obj = errors;
  if ('number' == typeof $$obj.length) {

    for (var $index = 0, $$l = $$obj.length; $index < $$l; $index++) {
      var error = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 6, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 7, "_includes/sharedHTMLfunctions.jade" ));
levelClass = "text-" + error.level.toLowerCase()
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 8, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 9, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<h4" + (jade.cls(["" + (levelClass) + ""], [true])) + ">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 9, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = error.title) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</h4>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 10, "_includes/sharedHTMLfunctions.jade" ));
// iterate error.text
;(function(){
  var $$obj = error.text;
  if ('number' == typeof $$obj.length) {

    for (var $index = 0, $$l = $$obj.length; $index < $$l; $index++) {
      var textRow = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 10, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 11, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div" + (jade.cls(["" + (levelClass) + ""], [true])) + ">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 11, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = textRow) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
    }

  } else {
    var $$l = 0;
    for (var $index in $$obj) {
      $$l++;      var textRow = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 10, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 11, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div" + (jade.cls(["" + (levelClass) + ""], [true])) + ">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 11, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = textRow) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
    }

  }
}).call(this);

jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
    }

  } else {
    var $$l = 0;
    for (var $index in $$obj) {
      $$l++;      var error = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 6, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 7, "_includes/sharedHTMLfunctions.jade" ));
levelClass = "text-" + error.level.toLowerCase()
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 8, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 9, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<h4" + (jade.cls(["" + (levelClass) + ""], [true])) + ">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 9, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = error.title) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</h4>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 10, "_includes/sharedHTMLfunctions.jade" ));
// iterate error.text
;(function(){
  var $$obj = error.text;
  if ('number' == typeof $$obj.length) {

    for (var $index = 0, $$l = $$obj.length; $index < $$l; $index++) {
      var textRow = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 10, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 11, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div" + (jade.cls(["" + (levelClass) + ""], [true])) + ">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 11, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = textRow) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
    }

  } else {
    var $$l = 0;
    for (var $index in $$obj) {
      $$l++;      var textRow = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 10, "_includes/sharedHTMLfunctions.jade" ));
jade_debug.unshift(new jade.DebugItem( 11, "_includes/sharedHTMLfunctions.jade" ));
buf.push("<div" + (jade.cls(["" + (levelClass) + ""], [true])) + ">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 11, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = textRow) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
    }

  }
}).call(this);

jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
    }

  }
}).call(this);

jade_debug.shift();
jade_debug.shift();
};
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 1, "_includes/sharedHTMLfunctions.jade" ));

















jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 1, "layout.jade" ));
buf.push("<!DOCTYPE html>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 2, "layout.jade" ));
buf.push("<html>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 3, "layout.jade" ));
buf.push("<head>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 4, "layout.jade" ));
buf.push("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 5, "layout.jade" ));
buf.push("<title>" + (jade.escape(null == (jade_interp = title) ? "" : jade_interp)));
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.shift();
buf.push("</title>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 6, "layout.jade" ));
buf.push("<link rel=\"stylesheet\" href=\"/bootstrap/css/bootstrap.min.css\" media=\"screen\">");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 7, "layout.jade" ));
buf.push("<link rel=\"stylesheet\" href=\"/stylesheets/style.css\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</head>");
jade_debug.shift();
jade_debug.shift();
buf.push("</html>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 8, "layout.jade" ));
buf.push("<body>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 9, "layout.jade" ));
buf.push("<div class=\"navbar navbar-inverse navbar-fixed-top\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 10, "layout.jade" ));
buf.push("<div class=\"container\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 11, "layout.jade" ));
buf.push("<div class=\"navbar-header\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 12, "layout.jade" ));
buf.push("<a href=\"/\" class=\"navbar-brand\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 12, jade_debug[0].filename ));
buf.push("Hui O Ka Wai Ola");
jade_debug.shift();
jade_debug.shift();
buf.push("</a>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 13, "layout.jade" ));
buf.push("<button type=\"button\" data-toggle=\"collapse\" data-target=\"#navbar-main\" class=\"navbar-toggle\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 14, "layout.jade" ));
buf.push("<span class=\"icon-bar\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.shift();
buf.push("</span>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 15, "layout.jade" ));
buf.push("<span class=\"icon-bar\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.shift();
buf.push("</span>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 16, "layout.jade" ));
buf.push("<span class=\"icon-bar\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.shift();
buf.push("</span>");
jade_debug.shift();
jade_debug.shift();
buf.push("</button>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 17, "layout.jade" ));
buf.push("<div id=\"navbar-main\" class=\"navbar-collapse collapse\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 18, "layout.jade" ));
buf.push("<ul class=\"nav navbar-nav\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 19, "layout.jade" ));
buf.push("<li>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 20, "layout.jade" ));
buf.push("<a href=\"/labSessionsOverview/\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 20, jade_debug[0].filename ));
buf.push("Sessions");
jade_debug.shift();
jade_debug.shift();
buf.push("</a>");
jade_debug.shift();
jade_debug.shift();
buf.push("</li>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 21, "layout.jade" ));
buf.push("<li>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 22, "layout.jade" ));
buf.push("<a href=\"/labSessionsOverview/\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 22, jade_debug[0].filename ));
buf.push("About");
jade_debug.shift();
jade_debug.shift();
buf.push("</a>");
jade_debug.shift();
jade_debug.shift();
buf.push("</li>");
jade_debug.shift();
jade_debug.shift();
buf.push("</ul>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 24, "layout.jade" ));
buf.push("<div class=\"container\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 5, "layout.jade" ));
jade_debug.unshift(new jade.DebugItem( 6, "editSamplesOnDate.jade" ));
buf.push("<div class=\"container\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 7, "editSamplesOnDate.jade" ));
buf.push("<div class=\"row page-header\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 8, "editSamplesOnDate.jade" ));
buf.push("<div class=\"col-lg-12\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 9, "editSamplesOnDate.jade" ));
buf.push("<h3>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 9, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = title) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</h3>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 10, "editSamplesOnDate.jade" ));
if ((errors) && (errors.length > 0)) {
{
jade_debug.unshift(new jade.DebugItem( 11, "editSamplesOnDate.jade" ));
jade_debug.unshift(new jade.DebugItem( 11, "editSamplesOnDate.jade" ));
buf.push("<div class=\"row\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 12, "editSamplesOnDate.jade" ));
buf.push("<h3 class=\"text-danger\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 12, jade_debug[0].filename ));
buf.push("Errors and Warnings Detected");
jade_debug.shift();
jade_debug.shift();
buf.push("</h3>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 13, "editSamplesOnDate.jade" ));
buf.push("<div class=\"row\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 14, "editSamplesOnDate.jade" ));
jade_mixins["outputErrors"](errors);
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
}
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 15, "editSamplesOnDate.jade" ));
}
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 16, "editSamplesOnDate.jade" ));
buf.push("<div class=\"row\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 17, "editSamplesOnDate.jade" ));
buf.push("<div class=\"col-md-12\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 18, "editSamplesOnDate.jade" ));
buf.push("<form action=\"/executeEditSamplesOnDate\" method=\"POST\" role=\"form\" class=\"col-md-12\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 19, "editSamplesOnDate.jade" ));
buf.push("<input type=\"hidden\" name=\"labId\"" + (jade.attr("value", "" + (labId) + "", true, true)) + ">");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 20, "editSamplesOnDate.jade" ));
buf.push("<input type=\"hidden\" name=\"sessionNumber\"" + (jade.attr("value", "" + (sessionNumber) + "", true, true)) + ">");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 21, "editSamplesOnDate.jade" ));
buf.push("<input type=\"hidden\" name=\"labLongName\"" + (jade.attr("value", "" + (labLongName) + "", true, true)) + ">");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 22, "editSamplesOnDate.jade" ));
buf.push("<input type=\"hidden\" name=\"theDate\"" + (jade.attr("value", "" + (theDate) + "", true, true)) + ">");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 23, "editSamplesOnDate.jade" ));
buf.push("<table class=\"table table-striped table-hover\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 24, "editSamplesOnDate.jade" ));
buf.push("<thead>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 25, "editSamplesOnDate.jade" ));
buf.push("<tr>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 26, "editSamplesOnDate.jade" ));
buf.push("<th>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 26, jade_debug[0].filename ));
buf.push("Location Name");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 27, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 27, jade_debug[0].filename ));
buf.push("Time");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 28, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 28, jade_debug[0].filename ));
buf.push("Temp (C)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 29, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 29, jade_debug[0].filename ));
buf.push("Sal");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 30, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 30, jade_debug[0].filename ));
buf.push("DO");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 31, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 31, jade_debug[0].filename ));
buf.push("DO Sat");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 32, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 32, jade_debug[0].filename ));
buf.push("pH");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 33, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 33, jade_debug[0].filename ));
buf.push(" ");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 34, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 34, jade_debug[0].filename ));
buf.push("Turbidity (NTU)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 35, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 35, jade_debug[0].filename ));
buf.push(" ");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.shift();
buf.push("</tr>");
jade_debug.shift();
jade_debug.shift();
buf.push("</thead>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 36, "editSamplesOnDate.jade" ));
buf.push("<thead>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 37, "editSamplesOnDate.jade" ));
buf.push("<tr>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 38, "editSamplesOnDate.jade" ));
buf.push("<th>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 38, jade_debug[0].filename ));
buf.push(" ");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 39, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 40, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 40, jade_debug[0].filename ));
buf.push("(C)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 41, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 41, jade_debug[0].filename ));
buf.push("(ppt)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 42, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 42, jade_debug[0].filename ));
buf.push("(mg/L)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 43, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 43, jade_debug[0].filename ));
buf.push("(%)");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 44, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 45, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 45, jade_debug[0].filename ));
buf.push("1");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 46, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 46, jade_debug[0].filename ));
buf.push("2");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 47, "editSamplesOnDate.jade" ));
buf.push("<th class=\"in-situ-header-cell\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 47, jade_debug[0].filename ));
buf.push("3");
jade_debug.shift();
jade_debug.shift();
buf.push("</th>");
jade_debug.shift();
jade_debug.shift();
buf.push("</tr>");
jade_debug.shift();
jade_debug.shift();
buf.push("</thead>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 48, "editSamplesOnDate.jade" ));
// iterate samples
;(function(){
  var $$obj = samples;
  if ('number' == typeof $$obj.length) {

    for (var $index = 0, $$l = $$obj.length; $index < $$l; $index++) {
      var sample = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 48, "editSamplesOnDate.jade" ));
jade_debug.unshift(new jade.DebugItem( 49, "editSamplesOnDate.jade" ));
buf.push("<tr>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 50, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 50, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.long_name) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 51, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 52, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".time", true, true)) + (jade.attr("value", "" + (sample.time) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 53, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 54, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".temperature", true, true)) + (jade.attr("value", "" + (sample.temperature) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 55, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 56, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".salinity", true, true)) + (jade.attr("value", "" + (sample.salinity) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 57, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 58, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".dissolved_oxygen", true, true)) + (jade.attr("value", "" + (sample.dissolved_oxygen) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 59, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 60, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".dissolved_oxygen_pct", true, true)) + (jade.attr("value", "" + (sample.dissolved_oxygen_pct) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 61, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 62, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".ph", true, true)) + (jade.attr("value", "" + (sample.ph) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 63, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 64, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".turbidity_1", true, true)) + (jade.attr("value", "" + (sample.turbidity_1) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 65, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 66, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".turbidity_2", true, true)) + (jade.attr("value", "" + (sample.turbidity_2) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 67, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 68, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".turbidity_3", true, true)) + (jade.attr("value", "" + (sample.turbidity_3) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.shift();
buf.push("</tr>");
jade_debug.shift();
jade_debug.shift();
    }

  } else {
    var $$l = 0;
    for (var $index in $$obj) {
      $$l++;      var sample = $$obj[$index];

jade_debug.unshift(new jade.DebugItem( 48, "editSamplesOnDate.jade" ));
jade_debug.unshift(new jade.DebugItem( 49, "editSamplesOnDate.jade" ));
buf.push("<tr>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 50, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 50, jade_debug[0].filename ));
buf.push("" + (jade.escape((jade_interp = sample.long_name) == null ? '' : jade_interp)) + "");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 51, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 52, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".time", true, true)) + (jade.attr("value", "" + (sample.time) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 53, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 54, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".temperature", true, true)) + (jade.attr("value", "" + (sample.temperature) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 55, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 56, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".salinity", true, true)) + (jade.attr("value", "" + (sample.salinity) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 57, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 58, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".dissolved_oxygen", true, true)) + (jade.attr("value", "" + (sample.dissolved_oxygen) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 59, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 60, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".dissolved_oxygen_pct", true, true)) + (jade.attr("value", "" + (sample.dissolved_oxygen_pct) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 61, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 62, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".ph", true, true)) + (jade.attr("value", "" + (sample.ph) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 63, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 64, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".turbidity_1", true, true)) + (jade.attr("value", "" + (sample.turbidity_1) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 65, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 66, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".turbidity_2", true, true)) + (jade.attr("value", "" + (sample.turbidity_2) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 67, "editSamplesOnDate.jade" ));
buf.push("<td>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 68, "editSamplesOnDate.jade" ));
buf.push("<input type=\"text\"" + (jade.attr("name", "sampleTag." + (sample.sample_id) + ".turbidity_3", true, true)) + (jade.attr("value", "" + (sample.turbidity_3) + "", true, true)) + " class=\"form-control\">");
jade_debug.shift();
jade_debug.shift();
buf.push("</td>");
jade_debug.shift();
jade_debug.shift();
buf.push("</tr>");
jade_debug.shift();
jade_debug.shift();
    }

  }
}).call(this);

jade_debug.shift();
jade_debug.shift();
buf.push("</table>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 69, "editSamplesOnDate.jade" ));
buf.push("<button type=\"submit\" class=\"btn btn-primary\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 69, jade_debug[0].filename ));
buf.push("Update");
jade_debug.shift();
jade_debug.shift();
buf.push("</button>");
jade_debug.shift();
jade_debug.shift();
buf.push("</form>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 27, "layout.jade" ));
buf.push("<footer>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 28, "layout.jade" ));
buf.push("<div class=\"row\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 29, "layout.jade" ));
buf.push("<div class=\"col-xs-12\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 30, "layout.jade" ));
buf.push("<small>");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 30, jade_debug[0].filename ));
buf.push("&copy; Hui O Ka Wai Ola 2017");
jade_debug.shift();
jade_debug.shift();
buf.push("</small>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</footer>");
jade_debug.shift();
jade_debug.shift();
buf.push("</div>");
jade_debug.shift();
jade_debug.shift();
buf.push("</body>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 33, "layout.jade" ));
buf.push("<script src=\"/javascripts/jquery-2.2.4.min.js\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.unshift(new jade.DebugItem( 34, "layout.jade" ));
buf.push("<script src=\"/bootstrap/js/bootstrap.min.js\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.shift();
buf.push("</script>");
jade_debug.shift();
jade_debug.unshift(new jade.DebugItem( 35, "layout.jade" ));
buf.push("<script src=\"/dataFormattingFunctions.js\">");
jade_debug.unshift(new jade.DebugItem( undefined, jade_debug[0].filename ));
jade_debug.shift();
buf.push("</script>");
jade_debug.shift();
jade_debug.shift();
buf.push("</script>");
jade_debug.shift();
jade_debug.shift();}.call(this,"errors" in locals_for_with?locals_for_with.errors:typeof errors!=="undefined"?errors:undefined,"labId" in locals_for_with?locals_for_with.labId:typeof labId!=="undefined"?labId:undefined,"labLongName" in locals_for_with?locals_for_with.labLongName:typeof labLongName!=="undefined"?labLongName:undefined,"levelClass" in locals_for_with?locals_for_with.levelClass:typeof levelClass!=="undefined"?levelClass:undefined,"samples" in locals_for_with?locals_for_with.samples:typeof samples!=="undefined"?samples:undefined,"sessionNumber" in locals_for_with?locals_for_with.sessionNumber:typeof sessionNumber!=="undefined"?sessionNumber:undefined,"theDate" in locals_for_with?locals_for_with.theDate:typeof theDate!=="undefined"?theDate:undefined,"title" in locals_for_with?locals_for_with.title:typeof title!=="undefined"?title:undefined,"undefined" in locals_for_with?locals_for_with.undefined:typeof undefined!=="undefined"?undefined:undefined));;return buf.join("");
} catch (err) {
  jade.rethrow(err, jade_debug[0].filename, jade_debug[0].lineno, "extends layout\n\ninclude _includes/sharedHTMLfunctions\n\nblock content\n  .container\n    .row.page-header\n      .col-lg-12\n        h3 #{title}\n    - if ((errors) && (errors.length > 0)) {\n      .row\n        h3.text-danger Errors and Warnings Detected\n      .row\n        +outputErrors(errors)\n    - }\n    .row\n      .col-md-12\n        form(action=\"/executeEditSamplesOnDate\", method=\"POST\", role=\"form\").col-md-12\n          input(type=\"hidden\", name=\"labId\", value=\"#{labId}\")\n          input(type=\"hidden\", name=\"sessionNumber\", value=\"#{sessionNumber}\")\n          input(type=\"hidden\", name=\"labLongName\", value=\"#{labLongName}\")\n          input(type=\"hidden\", name=\"theDate\", value=\"#{theDate}\")\n          table.table.table-striped.table-hover\n           thead\n             tr\n               th Location Name\n               th.in-situ-header-cell Time\n               th.in-situ-header-cell Temp (C)\n               th.in-situ-header-cell Sal\n               th.in-situ-header-cell DO\n               th.in-situ-header-cell DO Sat\n               th.in-situ-header-cell pH\n               th.in-situ-header-cell \n               th.in-situ-header-cell Turbidity (NTU)\n               th.in-situ-header-cell \n           thead\n             tr\n               th \n               th.in-situ-header-cell\n               th.in-situ-header-cell (C)\n               th.in-situ-header-cell (ppt)\n               th.in-situ-header-cell (mg/L)\n               th.in-situ-header-cell (%)\n               th.in-situ-header-cell\n               th.in-situ-header-cell 1\n               th.in-situ-header-cell 2\n               th.in-situ-header-cell 3\n           each sample in samples\n             tr\n               td #{sample.long_name}\n               td\n                 input(type=\"text\", name=\"sampleTag.#{sample.sample_id}.time\", value=\"#{sample.time}\").form-control\n               td\n                 input(type=\"text\", name=\"sampleTag.#{sample.sample_id}.temperature\", value=\"#{sample.temperature}\").form-control\n               td\n                 input(type=\"text\", name=\"sampleTag.#{sample.sample_id}.salinity\", value=\"#{sample.salinity}\").form-control\n               td\n                 input(type=\"text\", name=\"sampleTag.#{sample.sample_id}.dissolved_oxygen\", value=\"#{sample.dissolved_oxygen}\").form-control\n               td\n                 input(type=\"text\", name=\"sampleTag.#{sample.sample_id}.dissolved_oxygen_pct\", value=\"#{sample.dissolved_oxygen_pct}\").form-control\n               td\n                 input(type=\"text\", name=\"sampleTag.#{sample.sample_id}.ph\", value=\"#{sample.ph}\").form-control\n               td\n                 input(type=\"text\", name=\"sampleTag.#{sample.sample_id}.turbidity_1\", value=\"#{sample.turbidity_1}\").form-control\n               td\n                 input(type=\"text\", name=\"sampleTag.#{sample.sample_id}.turbidity_2\", value=\"#{sample.turbidity_2}\").form-control\n               td\n                 input(type=\"text\", name=\"sampleTag.#{sample.sample_id}.turbidity_3\", value=\"#{sample.turbidity_3}\").form-control\n          button(type=\"submit\").btn.btn-primary Update\n");
}
}