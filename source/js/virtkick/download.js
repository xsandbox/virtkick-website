// create namespace
if (!vk) var vk = {};

vk.download = (function () {
  var currentDistro = undefined;

  var hideDistro = function (distro) {
    if (distro) {
      $('.' + distro).removeClass('active');
      $('.' + distro + '-installation').addClass('hidden');
    }
  };
  return {
    showDistro: function (distro) {
      if (currentDistro !== distro) {
        hideDistro(currentDistro);
        $('.' + distro).addClass('active');
        $('.' + distro + '-installation').removeClass('hidden');
        currentDistro = distro;
      }
    }
  }
})();