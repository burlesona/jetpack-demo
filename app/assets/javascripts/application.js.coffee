#  APPLICATION MANIFEST
#= require jquery
#= require jquery_ujs
#= require jetpack
#= require_tree .

jQuery ->
  Jetpack.flashMessages.init()
  Jetpack.modal.init()
  Jetpack.tabs.init()
  Jetpack.pills.init()

  # PAGE-SPECIFIC BINDINGS
  jsView.init() if $('body.javascript').length


jsView =
  init: ->
    $('a.show-alerts').on 'click', @showAlerts
    $('a.append-modal').on 'click', (event) => @appendModal(event)

  showAlerts: ->
    $('.example.alerts .viewport').append '''
    <div class="flash-message" data-persist="true">Default Flash Message</div>
    <div class="flash-message alert" data-persist="true">Alert Flash Message</div>
    <div class="flash-message notice" data-persist="true">Notice Flash Message</div>
    <div class="flash-message success" data-persist="true">Success Flash Message</div>
    '''
    Jetpack.flashMessages.init('.example.alerts .flash-message')

  appendModal: (event) ->
    event.preventDefault()
    @modal ?= new Jetpack.ModalWindow('<div class="modal-window"><h1>Appended Modal</h1><p>I get added and removed from the DOM on demand.</p></div>',append: true)
    @modal.show()
