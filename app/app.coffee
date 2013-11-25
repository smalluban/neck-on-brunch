# Main App controller
class App extends Neck.App

  constructor: ->
    super

    # App wiat for 'run' event becouse you
    # can do some ajax calls or something else before
    # you want to user see app (app will be then rendered)
    @trigger 'run'

    # After we render application we go to example controller
    @route 'example'


# Start application after document is ready 
# and connect it with body tag
$(document).ready -> new App el: $("body")