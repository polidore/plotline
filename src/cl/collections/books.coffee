class Books extends Backbone.Collection

  model: Book
  
  localStorage: new Store 'plotline'
  
  getTitle: (book) ->
    return book.get 'title'

  nextOrder: ->
    return 1 if !@length
    return @last().get('order') + 1

  comparator: (book) ->
    return book.get 'order'

