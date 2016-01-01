/*globals FCH, FC */

// 'use strict';

FC._ui = {

  init: function() {
    if (FCH.exists('.js-attend-btn')){
      this.attend_button_listener();
    }
  },

  attend_button_listener: function(){
    var _this = this;
    $('.js-attend-btn').on('click', function(e){
      e.preventDefault();
      var obj = { event_id: $(this).attr('data_id'), user_id: $(this).attr('data_user_id')};
      _this._post_attend_request(obj);
    });
  },

  _post_attend_request: function(params){
    $.ajax({
      url: '/events/attend',
      type: 'post',
      data: params,
      success: function(data){
        var $button = $('.js-attend-btn');

        if ($button.attr('data_attend') === 'true') {
          $('.js-attend-btn').removeClass('attending');
          $button.attr('data_attend', false);
          $button.html('Attend');
        } else {
          $('.js-attend-btn').addClass('attending');
          $button.attr('data_attend', true);
          $button.html('Cancel');
        }

      }
    });
  },

};
