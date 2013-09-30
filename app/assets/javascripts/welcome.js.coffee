# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Polyfills
Modernizr.load
  test: Modernizr.input.placeholder
  nope: ['/assets/polyfills/Placeholders.js']
  complete: -> Placeholders.enable() if Placeholders?