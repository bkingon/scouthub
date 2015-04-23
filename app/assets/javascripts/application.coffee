#= require jquery
#= require jquery_ujs
# require turbolinks

#= require vendor/fastclick
#= require vendor/foundation
#= require vendor/placeholder
#= require vendor/slick

$ ->

  $('.slider').slick
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1

  $('.multi-slider').slick
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 3,
    slidesToScroll: 3

  $('input, textarea').placeholder()
  $('select[disabled], input[disabled]').closest('.form__control').addClass('is-disabled')
  $('input[type=file]').change () ->
    file_name = $(@).val().split('\\').pop()
    $(@).siblings('.form__file-name').text(file_name)

  # Place all other Javascript above this line

  if $('#preloader').length
    $('#preloader').fadeOut 1000, ->
      $(@).remove()
