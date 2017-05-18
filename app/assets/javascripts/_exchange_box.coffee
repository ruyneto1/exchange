$(document).ready ->
  $('form').bind 'keyup change', ->
      $.ajax
          url: '/exchange',
          type: 'POST'
          dataType: 'json'
          data: {
                  currency: $("#currency").val(),
                  currency_destination: $("#currency_destination").val(),
                  quantity: $("#quantity").val()
                }
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
          success: (data, text, jqXHR) ->
            $('#result').val(data.value)
        return false;

$(document).ready ->
  currency = $('#currency')
  currency_destination = $('#currency_destination')
  $(document).on 'click', '#changevalue', ->
    aux = currency.val()
    currency.val currency_destination.val()
    currency_destination.val aux
    $('form').keyup()
    return
return
