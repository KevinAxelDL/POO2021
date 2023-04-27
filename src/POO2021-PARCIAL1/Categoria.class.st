"
...
"
Class {
	#name : #Categoria,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'estado'
	],
	#category : #'POO2021-PARCIAL1'
}

{ #category : #'as yet unclassified' }
Categoria class >> crearCategoria: nombreIn con: estadoIn [
	"nombre estado"
	|categoria|
	categoria := self new.
	categoria inicializarCategoria: nombreIn con: estadoIn.
	^ categoria.
]

{ #category : #'as yet unclassified' }
Categoria >> getNombre [ 
	^nombre .
]

{ #category : #'as yet unclassified' }
Categoria >> inicializarCategoria: nombreIn con: estadoIn [
	"nombre estado"
	nombre := nombreIn.
	estado := estadoIn.
	
]

{ #category : #'as yet unclassified' }
Categoria >> obtenerItems: unQRMatic [
	^ unQRMatic listarItemsPorCategoria: self.
]
