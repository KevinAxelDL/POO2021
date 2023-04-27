"
...
"
Class {
	#name : #Item,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'descripcion',
		'precio',
		'colCategorias'
	],
	#category : #'POO2021-PARCIAL1'
}

{ #category : #'as yet unclassified' }
Item class >> crearItem: nombreIn con: descripcionIn con: precioIn con: colCategoriasIn [
	"nombre descripcion precio colCategorias"
	|item|
	item := self new.
	item inicializarItem: nombreIn con: descripcionIn con: precioIn con: colCategoriasIn.
	^ item.
]

{ #category : #'as yet unclassified' }
Item >> inicializarItem: nombreIn con: descripcionIn con: precioIn con: colCategoriasIn [
	"nombre descripcion precio colCategorias"
	nombre := nombreIn .
	descripcion := descripcionIn .
	precio := precioIn .
	colCategorias := colCategoriasIn .
]

{ #category : #'as yet unclassified' }
Item >> verificarCategoria: unaCategoria [
	|exito existe|
	exito := false.
	existe := colCategorias detect:[:cadaCategoria| cadaCategoria getNombre = unaCategoria getNombre]ifNone:[nil].
	(existe ~= nil)ifTrue: [ exito := true ].
	^ exito.
]
