'use strict'

angular
  .module('rbmaSushiSequencer', [])
  .controller('SushiSequencerController', ->
    console.log('This is the sushi controller.')
  )
  .directive('rbmaSushiSequencer', ->
    template: 'This is the sushi directive'
  )
