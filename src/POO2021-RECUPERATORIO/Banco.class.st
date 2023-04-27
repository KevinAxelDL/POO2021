"
...
"
Class {
	#name : #Banco,
	#superclass : #Object,
	#instVars : [
		'colClientes'
	],
	#category : #'POO2021-RECUPERATORIO'
}

{ #category : #'as yet unclassified' }
Banco >> generarListadoClientesAtrasados [
	|listadoClientesCuotas clienteConCuotas|
	
	clienteConCuotas := OrderedCollection new.
	listadoClientesCuotas := OrderedCollection new.
	
	colClientes do:[ :unCliente| 
		|nroID cuotasPendientes|
		cuotasPendientes := unCliente cuotasPendientesTotales.
		(cuotasPendientes > 0) ifTrue: [
			nroID := unCliente getNroID.
			clienteConCuotas add: nroID.
			clienteConCuotas add: cuotasPendientes.
			
			listadoClientesCuotas add: clienteConCuotas .
			].
		].
	^ listadoClientesCuotas .
	
]
