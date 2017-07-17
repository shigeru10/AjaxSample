# ajax 共通化
$.ajax_event = (option,on_success_function,on_failed_function) ->
  options =
    async: true
    type: 'POST'
    url: option.url
    data: option.data
    dataType: 'json'
    cache: false
  bind_object = $.ajax options
  bind_object.done (data, stat, xhr) ->
    console.log { done: stat, data: data, xhr: xhr }
    on_success_function(data)
  bind_object.fail (xhr, stat, errorThrown) ->
    console.log { fail: stat, error: errorThrown, xhr: xhr }
    alert xhr.responseText
    on_failed_function

$ ->
  setInterval () ->
    console.log("root送信します！")
    option =
      url:  "ajax"
      data: ""
    console.log option
    on_success = (data) ->
      console.log "データ送信完了です"
    # $.ajax_event(option, on_success, null)
  , 5000
