"
Subclase
"
Class {
	#name : #PersonaPos,
	#superclass : #Postulante,
	#instVars : [
		'colAptitudes'
	],
	#classVars : [
		'limiteMontoServicios'
	],
	#category : #'POO2021-PARCIAL2'
}

{ #category : #'as yet unclassified' }
PersonaPos class >> crear: colDatosIn conAptitudes: colAptitudesIn [
	|unaPersona|
	unaPersona := self new.
	unaPersona inicializar: colDatosIn .
	unaPersona inicializar: colAptitudesIn .
	^ unaPersona
]

{ #category : #'as yet unclassified' }
PersonaPos >> inicializar: colAptitudesIn [
	colAptitudes := colAptitudesIn .
]

{ #category : #'as yet unclassified' }
PersonaPos >> verificarRango: solicitud [
	|esValido|
	esValido := true.
	(solicitud getMontoTotal > limiteMontoServicios )
		ifTrue: [ esValido := false ].
	^ esValido .
	
]
