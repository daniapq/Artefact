Class {
	#name : #PDFStreamPrinterTest,
	#superclass : #TestCase,
	#instVars : [
		'aStream',
		'printer'
	],
	#category : #'Artefact-Generator-Test'
}

{ #category : #'as yet unclassified' }
PDFStreamPrinterTest >> testGenerateEOF [

	generator generate: (PDFEOF new) on: aStream.
	self assert: aStream contents equals: ('%%EOF', String crlf)
]

{ #category : #'as yet unclassified' }
PDFStreamPrinterTest >> testGenerateVersion [
	generator generate: (PDFVersion new) on: aStream.
	self assert: aStream contents equals: ('%PDF-1.3', String crlf)
]

{ #category : #'as yet unclassified' }
PDFStreamPrinterTest >> testMetaData [
	generator generate: (PDFMetaData new) on: aStream.
	self assert: (aStream contents replaceFrom: 107 to: 120 with: '00000000000000') equals: ('<<' , String crlf,
'/Producer (Artefact)' , String crlf,
'/Title ()' , String crlf,
'/Subject ()' , String crlf,
'/Author ()' , String crlf,
'/Keywords ()' , String crlf,
'/Creator ()' , String crlf,
'/CreationDate (D:00000000000000)' , String crlf,
'>>' , String crlf)
]