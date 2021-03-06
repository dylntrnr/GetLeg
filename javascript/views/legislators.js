// Generated by CoffeeScript 1.4.0
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  GetLeg.Views.LegislatorsView = (function(_super) {

    __extends(LegislatorsView, _super);

    function LegislatorsView() {
      this.addLegislator = __bind(this.addLegislator, this);

      this.render = __bind(this.render, this);
      return LegislatorsView.__super__.constructor.apply(this, arguments);
    }

    LegislatorsView.prototype.template = Hogan.compile($('#legislator-template').html());

    LegislatorsView.prototype.initialize = function() {
      return this.collection.on('add', this.addLegislator);
    };

    LegislatorsView.prototype.render = function() {
      var legislator, _i, _len, _ref, _results,
        _this = this;
      this.$el.empty();
      _ref = this.collection.models;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        legislator = _ref[_i];
        _results.push((function(legislator) {
          return _this.$el.prepend(_this.template.render(legislator.toJSON()));
        })(legislator));
      }
      return _results;
    };

    LegislatorsView.prototype.addLegislator = function() {
      var model,
        _this = this;
      model = this.collection.models[0];
      if (!model.attributes.long) {
        return console.log("no attributes to call");
      } else {
        return this.collection.fetch({
          url: 'http://openstates.org/api/v1/legislators/geo/?long=' + model.attributes.long + '&lat=' + model.attributes.lat + '&apikey=c13dee9099be4512a8bca6ad4f94c4aa&callback=?',
          success: function(data, s) {
            legislators.reset();
            legislators.add(s);
            _this.render(_this.collection);
          }
        });
      }
    };

    return LegislatorsView;

  })(Backbone.View);

}).call(this);
