"
This baseline is used to load the packages of the DataSet library.

Load type: 
- linear

Installs:

"
Class {
	#name : #BaselineOfAIDatasets,
	#superclass : #BaselineOf,
	#category : #BaselineOfAIDatasets
}

{ #category : #baselines }
BaselineOfAIDatasets >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		"External dependencies"
		spec
    			baseline: 'AIExternalDataFrame' with: [ spec repository: 'github://Joshua-Dias-Barreto/external-dependencies' ].
		
		"Packages"
		spec 
			package: 'AI-Datasets' with: [ spec requires: 'AIExternalDataFrame' ];
			package: 'AI-Datasets-Tests' with: [ spec requires: #('AI-Datasets') ] ].
]
