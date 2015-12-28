var Maps = {

  init: function() {
    Maps.styles;
  },

  styles: [{"featureType":"administrative.land_parcel","elementType":"labels.text","stylers":[{"visibility":"simplified"}]},{"featureType":"landscape.man_made","elementType":"geometry.fill","stylers":[{"lightness":"50"},{"saturation":"-80"}]},{"featureType":"landscape.man_made","elementType":"geometry.stroke","stylers":[{"color":"#e1e1e1"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"visibility":"simplified"},{"color":"#ffffff"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"geometry.stroke","stylers":[{"lightness":"20"},{"saturation":"-100"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"geometry.fill","stylers":[{"saturation":"-40"},{"lightness":"30"}]}],


};

$(function() {
  Maps.init();
});
