# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  #Revolution Slider 5
  if $('.slider-revolution-5-container').length > 0
    $('.tp-bannertimer').show()
    $('body:not(.transparent-header) .slider-revolution-5-container .slider-banner-fullscreen').revolution
      sliderType: 'standard'
      sliderLayout: 'fullscreen'
      delay: 9000
      autoHeight: 'on'
      responsiveLevels: [
        1199
        991
        767
        480
      ]
      fullScreenOffsetContainer: '.header-container, .offset-container'
      navigation:
        onHoverStop: 'off'
        arrows:
          style: 'hebe'
          enable: true
          tmp: '<div class="tp-title-wrap"><span class="tp-arr-titleholder">{{title}}</span></div>'
          left:
            h_align: 'left'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
          right:
            h_align: 'right'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
        bullets:
          style: ''
          enable: true
          hide_onleave: true
          direction: 'horizontal'
          space: 3
          h_align: 'center'
          v_align: 'bottom'
          h_offset: 0
          v_offset: 20
      gridwidth: 1140
      gridheight: 750
    $('.transparent-header .slider-revolution-5-container .slider-banner-fullscreen').revolution
      sliderType: 'standard'
      sliderLayout: 'fullscreen'
      delay: 9000
      autoHeight: 'on'
      responsiveLevels: [
        1199
        991
        767
        480
      ]
      fullScreenOffsetContainer: '.header-top, .offset-container'
      navigation:
        onHoverStop: 'off'
        arrows:
          style: 'hebe'
          enable: true
          tmp: '<div class="tp-title-wrap"><span class="tp-arr-titleholder">{{title}}</span></div>'
          left:
            h_align: 'left'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
          right:
            h_align: 'right'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
        bullets:
          style: ''
          enable: true
          hide_onleave: true
          direction: 'horizontal'
          space: 3
          h_align: 'center'
          v_align: 'bottom'
          h_offset: 0
          v_offset: 20
      gridwidth: 1140
      gridheight: 750
    $('.slider-revolution-5-container .slider-banner-fullwidth').revolution
      sliderType: 'standard'
      sliderLayout: 'fullwidth'
      delay: 8000
      gridwidth: 1140
      gridheight: 450
      responsiveLevels: [
        1199
        991
        767
        480
      ]
      navigation:
        onHoverStop: 'off'
        arrows:
          style: 'hebe'
          enable: true
          tmp: '<div class="tp-title-wrap"><span class="tp-arr-titleholder">{{title}}</span></div>'
          left:
            h_align: 'left'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
          right:
            h_align: 'right'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
        bullets:
          style: ''
          enable: true
          hide_onleave: true
          direction: 'horizontal'
          space: 3
          h_align: 'center'
          v_align: 'bottom'
          h_offset: 0
          v_offset: 20
    $('.slider-revolution-5-container .slider-banner-fullwidth-big-height').revolution
      sliderType: 'standard'
      sliderLayout: 'fullwidth'
      delay: 8000
      gridwidth: 1140
      gridheight: 650
      responsiveLevels: [
        1199
        991
        767
        480
      ]
      navigation:
        onHoverStop: 'off'
        arrows:
          style: 'hebe'
          enable: true
          tmp: '<div class="tp-title-wrap"><span class="tp-arr-titleholder">{{title}}</span></div>'
          left:
            h_align: 'left'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
          right:
            h_align: 'right'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
        bullets:
          style: ''
          enable: true
          hide_onleave: true
          direction: 'horizontal'
          space: 3
          h_align: 'center'
          v_align: 'bottom'
          h_offset: 0
          v_offset: 20
    $('.slider-revolution-5-container .slider-banner-boxedwidth').revolution
      sliderType: 'standard'
      sliderLayout: 'auto'
      delay: 8000
      gridwidth: 1140
      gridheight: 450
      responsiveLevels: [
        1199
        991
        767
        480
      ]
      shadow: 1
      navigation:
        onHoverStop: 'off'
        arrows:
          style: 'hebe'
          enable: true
          tmp: '<div class="tp-title-wrap"><span class="tp-arr-titleholder">{{title}}</span></div>'
          left:
            h_align: 'left'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
          right:
            h_align: 'right'
            v_align: 'center'
            h_offset: 0
            v_offset: 0
        bullets:
          style: ''
          enable: true
          hide_onleave: true
          direction: 'horizontal'
          space: 3
          h_align: 'center'
          v_align: 'bottom'
          h_offset: 0
          v_offset: 20
    $('.slider-revolution-5-container .slider-banner-fullscreen-hero:not(.dotted)').revolution
      sliderType: 'hero'
      sliderLayout: 'fullscreen'
      autoHeight: 'on'
      gridwidth: 1140
      gridheight: 650
      responsiveLevels: [
        1199
        991
        767
        480
      ]
      delay: 9000
      fullScreenOffsetContainer: '.header-top, .offset-container'
    $('.slider-revolution-5-container .slider-banner-fullscreen-hero.dotted').revolution
      sliderType: 'hero'
      sliderLayout: 'fullscreen'
      autoHeight: 'on'
      gridwidth: 1140
      gridheight: 650
      dottedOverlay: 'twoxtwo'
      delay: 9000
      responsiveLevels: [
        1199
        991
        767
        480
      ]
      fullScreenOffsetContainer: '.header-top, .offset-container'
    $('.slider-revolution-5-container .slider-banner-fullwidth-hero:not(.dotted)').revolution
      sliderType: 'hero'
      sliderLayout: 'fullwidth'
      gridwidth: 1140
      gridheight: 650
      responsiveLevels: [
        1199
        991
        767
        480
      ]
      delay: 9000
    $('.slider-revolution-5-container .slider-banner-fullwidth-hero.dotted').revolution
      sliderType: 'hero'
      sliderLayout: 'fullwidth'
      gridwidth: 1140
      gridheight: 650
      responsiveLevels: [
        1199
        991
        767
        480
      ]
      delay: 9000
      dottedOverlay: 'twoxtwo'
    $('.slider-revolution-5-container .slider-banner-carousel').revolution
      sliderType: 'carousel'
      sliderLayout: 'fullwidth'
      dottedOverlay: 'none'
      delay: 5000
      navigation:
        keyboardNavigation: 'off'
        keyboard_direction: 'horizontal'
        mouseScrollNavigation: 'off'
        mouseScrollReverse: 'default'
        onHoverStop: 'off'
        arrows:
          style: 'erinyen'
          enable: true
          hide_onmobile: false
          hide_onleave: false
          tmp: '<div class="tp-title-wrap">  \u0009<div class="tp-arr-imgholder"></div>    <div class="tp-arr-img-over"></div>\u0009<span class="tp-arr-titleholder">{{title}}</span> </div>'
          left:
            h_align: 'left'
            v_align: 'center'
            h_offset: 30
            v_offset: 0
          right:
            h_align: 'right'
            v_align: 'center'
            h_offset: 30
            v_offset: 0
        thumbnails:
          style: ''
          enable: true
          width: 160
          height: 120
          min_width: 100
          wrapper_padding: 30
          wrapper_color: '#373737'
          wrapper_opacity: '1'
          tmp: '<span class="tp-thumb-img-wrap">  <span class="tp-thumb-image"></span></span>'
          visibleAmount: 9
          hide_onmobile: false
          hide_onleave: false
          direction: 'horizontal'
          span: true
          position: 'outer-bottom'
          space: 20
          h_align: 'center'
          v_align: 'bottom'
          h_offset: 0
          v_offset: 0
      carousel:
        maxRotation: 65
        vary_rotation: 'on'
        minScale: 55
        vary_scale: 'off'
        horizontal_align: 'center'
        vertical_align: 'center'
        fadeout: 'on'
        vary_fade: 'on'
        maxVisibleItems: 5
        infinity: 'off'
        space: -150
        stretch: 'off'
      visibilityLevels: [
        1240
        1024
        778
        480
      ]
      gridwidth: 600
      gridheight: 600
      lazyType: 'none'
      spinner: 'off'
      stopLoop: 'off'
      stopAfterLoops: -1
      stopAtSlide: -1
      shuffle: 'off'
      autoHeight: 'off'
      disableProgressBar: 'on'
      hideThumbsOnMobile: 'off'
      hideSliderAtLimit: 0
      hideCaptionAtLimit: 0
      hideAllCaptionAtLilmit: 0
      shadow: 0
      fallbacks:
        simplifyAll: 'off'
        nextSlideOnWindowFocus: 'off'
        disableFocusListener: false
