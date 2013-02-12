// Generated by CoffeeScript 1.4.0
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  GetLeg.Models.Legislator = (function(_super) {

    __extends(Legislator, _super);

    function Legislator() {
      this.initialize = __bind(this.initialize, this);
      return Legislator.__super__.constructor.apply(this, arguments);
    }

    Legislator.prototype.parse = function(json) {
      if (!json.results) {
        return console.log("nothing was there");
      } else {
        this.set({
          lat: json.results[0].geometry.location.lat
        });
        return this.set({
          long: json.results[0].geometry.location.lng
        });
      }
    };

    Legislator.prototype.initialize = function() {
      var _this = this;
      return this.fetch({
        url: "http://maps.googleapis.com/maps/api/geocode/json?address=" + this.get('address') + "&sensor=false&callback=?",
        success: function(data, s) {
          return legislators.add(s);
        }
      });
    };

    return Legislator;

  })(Backbone.Model);

  GetLeg.Collections.LegislatorsCollection = (function(_super) {

    __extends(LegislatorsCollection, _super);

    function LegislatorsCollection() {
      return LegislatorsCollection.__super__.constructor.apply(this, arguments);
    }

    LegislatorsCollection.prototype.model = GetLeg.Models.Legislator;

    return LegislatorsCollection;

  })(Backbone.Collection);

}).call(this);
