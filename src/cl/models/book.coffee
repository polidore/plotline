class Book extends Backbone.Model

  defaults:
    title: "New Book"

  initialize: ->
    if !@get "content"
      @set {"content": @defaults.content}

  clear: ->
    @destroy()
    @view.remove()
