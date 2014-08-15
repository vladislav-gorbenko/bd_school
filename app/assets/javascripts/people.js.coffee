$(document).ready ->
  $("#clic").hide() #Initially form wil be hidden.
  $("#clic2").click ->
    $("#clic").show() #Form shows on button click
    return

  return

# $(document).ready ->
#   $("#clic").hide() #Initially form wil be hidden.
#   $("#clic2").click ->
#     debugger
#     if $(this).is(":checked")
#       $("#clic").show()
#     else
#       $("#clic").hide()
#     return

#   return

# $('#person_ids_')[0].checked