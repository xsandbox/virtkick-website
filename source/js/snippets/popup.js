var vk = (function () {
  return {
    // sample usage:
    // showPopup('newsletter-popup-cover', '_igg_newsletter_scroll', true);
    showPopup: function (id, cookie, stick, onPopupClose) {
      CoverPop.start({
        coverId:             id,
        expires:             30,
        closeClassNoDefault: 'CoverPop-close',
        closeClassDefault:   'CoverPop-close-go',
        cookieName:          cookie,
        onPopUpOpen:         function () {
          $('#' + id).addClass('show');
          if (stick) {
            var top = $('html').outerHeight()-$('footer').outerHeight();
            $('#' + id).addClass('sticked').css('top', top + "px");
          }
          $('#' + id + ' .popup-wrapper').addClass('brown');
          $('#' + id + ' .popup-content').addClass('shown');
        },
        onPopUpClose:        function () {
          $('#' + id).removeClass('sticked show').css('top', '0px');
          if (typeof onPopupClose === 'function') {
            onPopupClose();
          }
        },
        forceHash:           'popup',
        delayHash:           'go'
      });
    },

    closePopup: function (elem) {
      $(elem).closest('.popup-wrapper').removeClass('brown');
      $(elem).closest('.popup-content').removeClass('shown'); 
      setTimeout(function () {
        CoverPop.close();
      }, 850);
    } 
  };
})();