// Generated by CoffeeScript 1.4.0
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  GetLeg.Views.AddressForm = (function(_super) {

    __extends(AddressForm, _super);

    function AddressForm() {
      return AddressForm.__super__.constructor.apply(this, arguments);
    }

    AddressForm.prototype.events = {
      'click #Submit': 'createNewModel'
    };

    AddressForm.prototype.createNewModel = function() {
      var test, userAddress;
      legislators.reset();
      userAddress = $('#user_address').val();
      return test = new GetLeg.Models.Legislator({
        address: userAddress
      });
    };

    return AddressForm;

  })(Backbone.View);

}).call(this);
