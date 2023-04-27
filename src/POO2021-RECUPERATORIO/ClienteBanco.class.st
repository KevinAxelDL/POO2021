"
...
"
Class {
	#name : #ClienteBanco,
	#superclass : #Object,
	#instVars : [
		'nroID',
		'credito'
	],
	#category : #'POO2021-RECUPERATORIO'
}

{ #category : #'as yet unclassified' }
ClienteBanco >> cuotasFaltantesEspecial [
	^ 0.
]

{ #category : #'as yet unclassified' }
ClienteBanco >> cuotasPendientesTotales [
	|cuotasTotales cuotas cuotasEsp|
	cuotasTotales := 0.
	
	(credito isNotNil ) ifTrue: [ 
		(credito getCancelado) ifFalse: [ 
			cuotas := credito cuotasFaltantes.
			cuotasTotales := cuotasTotales + cuotas.
			 ].
		 ].
	
	cuotasEsp := self cuotasFaltantesEspecial.
	cuotasTotales := cuotasTotales + cuotasEsp.
	
	^ cuotasTotales .
	
]

{ #category : #'as yet unclassified' }
ClienteBanco >> getNroID [
	^ nroID .
]
