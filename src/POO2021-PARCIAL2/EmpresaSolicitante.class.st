"
Subclase
"
Class {
	#name : #EmpresaSolicitante,
	#superclass : #Empresa,
	#instVars : [
		'colSolicitudes'
	],
	#category : #'POO2021-PARCIAL2'
}

{ #category : #constructores }
EmpresaSolicitante class >> crear: colSolicitudesIn [ 
	|unaEmpresa|
	unaEmpresa := super new.
	unaEmpresa inicializar: colSolicitudesIn .
	^ unaEmpresa .
	
]

{ #category : #'as yet unclassified' }
EmpresaSolicitante >> inicializar: colSolicitudesIn [
	colSolicitudes := colSolicitudesIn .
]
