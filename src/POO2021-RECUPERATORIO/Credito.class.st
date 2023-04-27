"
...
"
Class {
	#name : #Credito,
	#superclass : #Object,
	#instVars : [
		'colCuotas',
		'enFalta',
		'cancelado'
	],
	#classVars : [
		'porcMulta'
	],
	#category : #'POO2021-RECUPERATORIO'
}

{ #category : #'as yet unclassified' }
Credito >> cuotasFaltantes [
	|cuotasTotales|
	cuotasTotales := 0.
	
	colCuotas do: [ :unaCuota|
		(unaCuota pagado) ifFalse: [ 
			cuotasTotales := cuotasTotales + 1.
			 ].
		 ].
	^ cuotasTotales.
]

{ #category : #'as yet unclassified' }
Credito >> getCancelado [
	^ cancelado.
]
