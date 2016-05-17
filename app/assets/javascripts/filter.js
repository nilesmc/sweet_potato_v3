/*globals FCH, FC */

// 'use strict';

FC._filter = {

  init: function() {
    var _this = this;
    if (FCH.exists('.js-event_filter')){
      _this.venue_name_event_listener();
      _this.fry = new Fryr(_this.filter_post());
    }
  },

  venue_name_event_listener: function() {
    var _this = this;
    $('.js-event_filter-venue_name').on('change',function() {
      _this.venue_name_groomer($(this));
    });
  },

  venue_name_groomer: function($selector) {
    var _this = this;
    var object = {};
    var key = 'venue-name';
    var value = '';
    value = $selector.find('input').data('filter');
    object[key] = value;
    _this.fry.merge(object);

    _this.filter_post(object);
  },

  filter_post: function(data) {

    $.ajax({
      type: "POST",
      url: '/filter/events',
      data: data,
      dataType: 'json',
      success: function(data) {
         $('#main').html($(data));
      }
    });

  }

}