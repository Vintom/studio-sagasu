# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org
$ ->
  $("#studios .page").infinitescroll
    loading: {
      img:     "//sagasu.space/images/loader.gif"
      msgText: "loading..."
    }
    navSelector: "ul.pagination" # selector for the paged navigation (it will be hidden)
    nextSelector: "ul.pagination a[rel=next]" # selector for the NEXT link (to page 2)
    itemSelector: "#studios div.studio" # selector for all items you'll retrievejj:w
