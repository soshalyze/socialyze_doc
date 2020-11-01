Feature: User chooses visualization

As an example user 
I would like to select a type of visualization so that the data can be displayed in this way

Scenario: User makes correct input
Given The user is on configuration page 
When he clicks on his visualization type to choose
And clicks on "Visualize it!"
Then he can se his choosed visualization

Scenario: User makes wrong input
Given The user is on configuration page 
And he has not chosen a configuration type
When he clicks on "Visualize it!"
Then the page drops an error

