Class {
	#name : #PDFRectStyle,
	#superclass : #PDFDraw,
	#category : #'Artefact-Styles'
}

{ #category : #accessing }
PDFRectStyle >> fillmode [
	^'S'
]

{ #category : #render }
PDFRectStyle >> renderContentOn: aPage [
	
	"Draw a rectangle from xy with a specified size wh"
		
	self out: (self xy x asString , ' -' , self xy y asString , ' ' , self wh x asString , ' -' , self wh y asString , ' re ' , self fillmode).
	
	^buffer
]