"
...
"
Class {
	#name : #QRMatic,
	#superclass : #Object,
	#instVars : [
		'idNegocio',
		'colCategorias',
		'colItems'
	],
	#category : #'POO2021-PARCIAL1'
}

{ #category : #'as yet unclassified' }
QRMatic class >> crearQRMatic: idNegocioIn con: colCategoriasIn con: colItemsIn [
	"idNegocio colCategorias colItems"
	|qrmatic|
	qrmatic := self new.
	qrmatic inicializarQRMatic: idNegocioIn  con: colCategoriasIn  con: colItemsIn .
	^ qrmatic .
]

{ #category : #'as yet unclassified' }
QRMatic >> inicializarQRMatic: idNegocioIn con: colCategoriasIn con: colItemsIn [
	"idNegocio colCategorias colItems"
	idNegocio := idNegocioIn .
	colCategorias := colCategoriasIn .
	colItems := colCategoriasIn .
]

{ #category : #'as yet unclassified' }
QRMatic >> listarItemsPorCategoria: unaCategoria [
	|colItemsXCategoria|
	colItemsXCategoria := colItems select:[:cadaItem| (cadaItem verificarCategoria: unaCategoria)].
	^ colItemsXCategoria.
]
