# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  console.log('ready')

  @didScroll = undefined
  @lastScrollDist = $(this).scrollTop

  $(window).scroll (event)-> @didScroll = true

  setInterval ->
    if @didScroll
      hasScrolled()
      didScroll = false
  , 250

  hasScrolled = ->
    ## Variables
    scrollDist = $(this).scrollTop()   # Scroll Distance
    scrolledUp = scrollDist < @lastScrollDist and @lastScrollDist > 0
    scrolledDown = scrollDist > @lastScrollDist
    domBottom = scrollDist + $(window).height() == $(document).height()
    domTop = scrollDist <= 0
    domEdge = domTop or domBottom

    ## Functions
    nav =
      hide: -> $('header').removeClass('nav-show').addClass('nav-hide')
      show: -> $('header').removeClass('nav-hide').addClass('nav-show')

    ## Logic

    # if domBottom
    #   console.log('bottom')

    # # If at top or bottom show nav
    # if domEdge then return nav.show()
    #
    # # If scrolling down hide if scrolling up show
    # if scrolledDown
    #   nav.hide()
    # else if scrolledUp
    #   nav.show()

    # Set Last Scroll Distance to Current Distance
    @lastScrollDist = scrollDist
