Class {
	#name : #BaselineOfEyeInspector,
	#superclass : #BaselineOf,
	#category : #BaselineOfEyeInspector
}

{ #category : #baselines }
BaselineOfEyeInspector >> baseline: spec [
	<baseline>
	
		spec for: #'common' do: [ 
			self spec: spec.
			spec package: 'EyeInspector' with: [ 
				spec requires: #('Spec2') ] ]
]

{ #category : #'external projects' }
BaselineOfEyeInspector >> spec: spec [

	spec baseline: 'Spec2' with: [ 
		spec repository: (self packageRepositoryURL 
			ifEmpty: [ 'github://pharo-spec/Spec' ]) ]
]
