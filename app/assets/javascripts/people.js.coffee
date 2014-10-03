$(document).ready ->
  $(":checkbox").click ->
    chboxs = $(":checkbox")
    vis = "none"
    i = 0
    while i < chboxs.length
      if chboxs[i].checked
        vis = "block"
        break
      i++
    $(".clic")[0].style.display = vis
    return
  return
