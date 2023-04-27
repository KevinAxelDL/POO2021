"
...
"
Class {
	#name : #ClienteAsalariado,
	#superclass : #ClienteBanco,
	#instVars : [
		'creditoEspecial'
	],
	#category : #'POO2021-RECUPERATORIO'
}

{ #category : #'as yet unclassified' }
ClienteAsalariado >> cuotasFaltantesEspecial [
	|cuotas|
	cuotas := 0.
	
	(credito isNotNil ) ifTrue: [ 
		(credito getCancelado) ifFalse: [ 
			cuotas := credito cuotasFaltantes.
			 ].
		 ].
	
	^ cuotas .
	
]
