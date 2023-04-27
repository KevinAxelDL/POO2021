"
...
"
Class {
	#name : #Cuota,
	#superclass : #Object,
	#instVars : [
		'monto',
		'interes',
		'fechaVencimiento',
		'fechaPagado'
	],
	#category : #'POO2021-RECUPERATORIO'
}

{ #category : #'as yet unclassified' }
Cuota >> pagado [
	|pagado|
	pagado := false.
	
	(fechaPagado = fechaVencimiento ) ifTrue: [ pagado := true ].
	
^ pagado.
]
