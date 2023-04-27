"
Clase abstracta
"
Class {
	#name : #Postulante,
	#superclass : #Object,
	#instVars : [
		'colDatos'
	],
	#category : #'POO2021-PARCIAL2'
}

{ #category : #'as yet unclassified' }
Postulante >> inicializar: colDatosIn [
	colDatos := colDatosIn .
]

{ #category : #'as yet unclassified' }
Postulante >> verificarRango: solicitud [
	self subclassResponsibility .
]

{ #category : #'as yet unclassified' }
Postulante >> verificarRequisito [
	"Sin implementacion ya que no se pidio"
]
