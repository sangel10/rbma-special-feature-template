'use strict'

angular
  .module('rbmaSushiSequencer', [])
  .controller('SushiSequencerController', ->
    console.log('Controller here.')
    console.log('!!!!!!!!!')
  )
  .directive('rbmaSushiSequencer', ->
    template: 'This is the sushi directive'
  )
