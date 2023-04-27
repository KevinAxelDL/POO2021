"
Subclase
"
Class {
	#name : #Empresa,
	#superclass : #Postulante,
	#instVars : [
		'rubro',
		'puntosTrabajo'
	],
	#classVars : [
		'montoXPunto'
	],
	#category : #'POO2021-PARCIAL2'
}

{ #category : #'as yet unclassified' }
Empresa class >> crear: colDatosIn conRubro: rubroIn conPuntos: puntosTrabajoIn [
	|unaEmpresa|
	unaEmpresa := self new.
	unaEmpresa inicializar: colDatosIn .
	unaEmpresa inicializar: rubroIn conPuntos: puntosTrabajoIn.
	^ unaEmpresa .
]

{ #category : #'as yet unclassified' }
Empresa >> inicializar: rubroIn conPuntos: puntosTrabajoIn [
	rubro := rubroIn .
	puntosTrabajo := puntosTrabajoIn .
]

{ #category : #'as yet unclassified' }
Empresa >> verificarRango: solicitud [
	|esValido|
	esValido := true.
	(solicitud getMontoTotal > puntosTrabajo * montoXPunto ) 
		ifTrue: [ esValido := false ].
		
	^ esValido
]
