"
A PDFElement is the abstract class for each element that can be included in a PDFPage.

Instance Variables
	styleSheet:		<Object>

styleSheet
	- xxxxx

"
Class {
	#name : #PDFElement,
	#superclass : #Object,
	#instVars : [
		'styleSheet'
	],
	#category : #'Artefact-Elements'
}

{ #category : #render }
PDFElement >> generateCodeSegmentWith: aPage styleSheet: aStyleSheet [
	^ self subclassResponsibility 
]

{ #category : #render }
PDFElement >> initialize [ 
	super initialize.
	self styleSheet: PDFStyleSheet new.
	
]

{ #category : #accessing }
PDFElement >> styleSheet [
	^ styleSheet
]

{ #category : #accessing }
PDFElement >> styleSheet: anObject [
	styleSheet := anObject
]