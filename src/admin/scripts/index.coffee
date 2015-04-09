'use strict'

angular
  .module('rbmaApp.pageTypes')

  .factory 'rbmaSushiSequencerPageSchema', (rbmaPageBaseProperties, rbmaPageMetaDataProperties) ->
    type: 'object'
    properties: angular.extend {}, rbmaPageBaseProperties, rbmaPageMetaDataProperties

  .factory 'rbmaSushiSequencerPageForm', (rbmaPageMetaDataFields) -> [
    type: 'fieldset'
    title: 'Header'
    items: [
      'title'
      'subtitle'
    ]
  ,
    type: 'fieldset'
    title: 'Meta Data'
    items: [
      'author'
    ,
      'slug'
    ,
      key: 'firstPublished'
      title: 'First Published'
      type: 'datepicker'
      format: "yyyy-mm-ddT00:00:00Z"
    ].concat rbmaPageMetaDataFields
  ]

  .run (rbmaPageTypeRegistry, rbmaSushiSequencerPageSchema, rbmaSushiSequencerPageForm) ->
    rbmaPageTypeRegistry.register 'sushiSequencer',
      schema: rbmaSushiSequencerPageSchema
      form: rbmaSushiSequencerPageForm
      directive: 'rbma-sushi-sequencer-page'
      label: 'sushi sequencer'
      specialFeature: true
      order: 10
