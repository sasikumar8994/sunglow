# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#Owl carousel
#-----------------------------------------------

$(document).on 'turbolinks:load', ->
  syncPosition = (el) ->
    #if you set loop to false, you have to restore this next line
    #var current = el.item.index;
    #if you disable loop you have to comment this block
    count = el.item.count - 1
    current = Math.round(el.item.index - (el.item.count / 2) - .5)
    if current < 0
      current = count
    if current > count
      current = 0
    #end block
    sync2.find('.owl-item').removeClass('current').eq(current).addClass 'current'
    onscreen = sync2.find('.owl-item.active').length - 1
    start = sync2.find('.owl-item.active').first().index()
    end = sync2.find('.owl-item.active').last().index()
    if current > end
      sync2.data('owl.carousel').to current, 100, true
    if current < start
      sync2.data('owl.carousel').to current - onscreen, 100, true
    return

  syncPosition2 = (el) ->
    if syncedSecondary
      number = el.item.index
      sync1.data('owl.carousel').to number, 100, true
    return

  if $('.owl-carousel').length > 0
    $('*[dir=\'ltr\'] .owl-carousel.carousel').owlCarousel
      items: 1
      dots: false
      nav: true
      loop: true
      navText: false
      responsive:
        479: items: 2
        768: items: 2
        992: items: 4
        1200: items: 4
    $('*[dir=\'rtl\'] .owl-carousel.carousel').owlCarousel
      items: 1
      rtl: true
      dots: false
      nav: true
      loop: true
      navText: false
      responsive:
        479: items: 2
        768: items: 2
        992: items: 4
        1200: items: 4
    $('*[dir=\'ltr\'] .owl-carousel.carousel-autoplay').owlCarousel
      items: 1
      autoplay: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      dots: false
      nav: true
      navText: false
      responsive:
        479: items: 2
        768: items: 2
        992: items: 4
        1200: items: 4
    $('*[dir=\'rtl\'] .owl-carousel.carousel-autoplay').owlCarousel
      items: 1
      rtl: true
      autoplay: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      dots: false
      nav: true
      navText: false
      responsive:
        479: items: 2
        768: items: 2
        992: items: 4
        1200: items: 4
    $('*[dir=\'ltr\'] .owl-carousel.clients').owlCarousel
      items: 2
      autoplay: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      dots: false
      responsive:
        479: items: 3
        768: items: 4
        992: items: 4
        1200: items: 6
    $('*[dir=\'rtl\'] .owl-carousel.clients').owlCarousel
      items: 2
      rtl: true
      autoplay: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      dots: false
      responsive:
        479: items: 3
        768: items: 4
        992: items: 4
        1200: items: 6
    $('*[dir=\'ltr\'] .owl-carousel.content-slider').owlCarousel
      items: 1
      autoplay: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      nav: false
      navText: false
      dots: false
    $('*[dir=\'rtl\'] .owl-carousel.content-slider').owlCarousel
      items: 1
      rtl: true
      autoplay: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      nav: false
      navText: false
      dots: false
    $('*[dir=\'ltr\'] .owl-carousel.content-slider-with-controls').owlCarousel
      items: 1
      loop: true
      autoplay: false
      nav: true
      dots: true
    $('*[dir=\'rtl\'] .owl-carousel.content-slider-with-controls').owlCarousel
      items: 1
      loop: true
      rtl: true
      autoplay: false
      nav: true
      dots: true
    $('*[dir=\'ltr\'] .owl-carousel.content-slider-with-large-controls').owlCarousel
      items: 1
      loop: true
      autoplay: false
      nav: true
      dots: true
    $('*[dir=\'rtl\'] .owl-carousel.content-slider-with-large-controls').owlCarousel
      items: 1
      loop: true
      rtl: true
      autoplay: false
      nav: true
      dots: true
    $('*[dir=\'ltr\'] .owl-carousel.content-slider-with-controls-autoplay').owlCarousel
      items: 1
      autoplay: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      nav: true
      dots: true
    $('*[dir=\'rtl\'] .owl-carousel.content-slider-with-controls-autoplay').owlCarousel
      items: 1
      autoplay: true
      rtl: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      nav: true
      dots: true
    $('*[dir=\'ltr\'] .owl-carousel.content-slider-with-large-controls-autoplay').owlCarousel
      items: 1
      autoplay: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      nav: true
      dots: true
    $('*[dir=\'rtl\'] .owl-carousel.content-slider-with-large-controls-autoplay').owlCarousel
      items: 1
      autoplay: true
      rtl: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      nav: true
      dots: true
    $('*[dir=\'ltr\'] .owl-carousel.content-slider-with-controls-autoplay-hover-stop').owlCarousel
      items: 1
      autoplay: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      nav: true
      dots: true
      autoplayHoverPause: true
    $('*[dir=\'rtl\'] .owl-carousel.content-slider-with-controls-autoplay-hover-stop').owlCarousel
      items: 1
      autoplay: true
      rtl: true
      autoplayTimeout: 5000
      autoplaySpeed: 700
      loop: true
      nav: true
      dots: true
      autoplayHoverPause: true
    sync1 = $('.owl-carousel.content-slider-with-thumbs')
    sync2 = $('.owl-carousel.content-slider-thumbs')
    slidesPerPage = 4
    #globaly define number of elements per page
    syncedSecondary = true
    if $('*[dir=\'ltr\']').length > 0
      sync1.owlCarousel(
        items: 1
        slideSpeed: 700
        nav: true
        autoplay: false
        dots: false
        loop: true
        responsiveRefreshRate: 200).on 'changed.owl.carousel', syncPosition
      sync2.on('initialized.owl.carousel', ->
        sync2.find('.owl-item').eq(0).addClass 'current'
        return
      ).owlCarousel(
        items: slidesPerPage
        dots: false
        nav: false
        smartSpeed: 200
        slideSpeed: 500
        slideBy: slidesPerPage
        responsiveRefreshRate: 100).on 'changed.owl.carousel', syncPosition2
    else
      sync1.owlCarousel(
        items: 1
        slideSpeed: 700
        nav: true
        autoplay: false
        rtl: true
        dots: false
        loop: true
        responsiveRefreshRate: 200).on 'changed.owl.carousel', syncPosition
      sync2.on('initialized.owl.carousel', ->
        sync2.find('.owl-item').eq(0).addClass 'current'
        return
      ).owlCarousel(
        items: slidesPerPage
        dots: false
        nav: false
        rtl: true
        smartSpeed: 200
        slideSpeed: 500
        slideBy: slidesPerPage
        responsiveRefreshRate: 100).on 'changed.owl.carousel', syncPosition2
    sync2.on 'click', '.owl-item', (e) ->
      e.preventDefault()
      number = $(this).index()
      sync1.data('owl.carousel').to number, 300, true
      return