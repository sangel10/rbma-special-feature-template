"use strict";angular.module("rbmaComponents.pageTypes").factory("rbmaSushiSequencerPageSchema",["rbmaPageBaseProperties","rbmaPageMetaDataProperties",function(e,t){return{type:"object",properties:angular.extend({},e,t,{artists:{type:"array",items:{type:"object",title:"artist",properties:{name:{type:"string"},video:{type:"object"},posterImage:{type:"object"}}}}})}}]).factory("rbmaSushiSequencerPageForm",["rbmaPageMetaDataFields",function(e){return[{type:"fieldset",title:"Header",items:["title","subtitle"]},{type:"fieldset",title:"Meta Data",items:["author","slug"].concat(e)},{type:"fieldset",title:"Artists",items:[{key:"artists",startEmpty:!0,items:[{key:"artists[].name",type:"text"},{key:"artists[].video",type:"video"},{key:"artists[].posterImage",type:"asset"}]}]}]}]).run(["acadminPageTypeRegistry","rbmaSushiSequencerPageSchema","rbmaSushiSequencerPageForm",function(e,t,r){return e.register("sushiSequencer",{schema:t,form:r,directive:"rbma-sushi-sequencer-page",label:"sushi sequencer",specialFeature:!0,order:10})}]);