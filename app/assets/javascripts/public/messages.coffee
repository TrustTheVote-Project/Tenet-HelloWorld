$ ->
  return unless $("body#messages-index")[0]?

  $('#message_body').characterCounter
    limit: gon.maxMessageChars
    counterFormat: '%1 characters remaining'

  $('.js-new-message').on 'click', (e) ->
    e.preventDefault()
    $('.js-new-message, .new-message').toggleClass 'hide'

  $('.js-cancel').on 'click', (e) ->
    e.preventDefault()
    $('.js-new-message, .new-message').toggleClass 'hide'
