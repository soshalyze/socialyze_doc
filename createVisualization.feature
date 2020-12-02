Feature:
Backend creates/produces visualization
	

	As an example user 
	I would like to create an new diagram so that the data can be displayed in this way

  Backend 
  I want to create the diagram and save it in the DB
	

	Scenario: Backend can create the diagram
	Given Backend got the needed informations from user
	Then he creates the diagram in this way
	And he saves it in the DB
	Then he can produces this visualization fort he user
	

	Scenario: Backend can‘t create the diagram
	Given Backend got incorrect informations from user 
	Then he can’t creates and reproduces the diagram
	Then the page drops an error

