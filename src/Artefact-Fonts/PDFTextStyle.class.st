Class {
	#name : #PDFTextStyle,
	#superclass : #PDFText,
	#category : #'Artefact-Styles'
}

{ #category : #render }
PDFTextStyle >> renderContentOn: aPage [
	"Draw a text at xy position"
		
	self out: 'BT ' , self xy x asString , ' -' , self xy y asString , ' Td ' , ((aPage document) textString: self text) , ' Tj ET'.
	
	^self buffer
	

]