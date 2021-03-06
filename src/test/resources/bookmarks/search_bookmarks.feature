Feature: User can search for existing bookmarks

	Scenario: The user can find bookmarks from many bookmarks that have been added
		Given the book "Stargate Atlantis: Homecoming" by "Jo Graham and Melissa Scott" has been added
		And the book "The No. 1 Ladies' Detective Agency" by "Alexander McCall Smith" has been added
		And the book "Leviathan Wakes" by "James S. A. Corey" has been added
		When command "search" is selected
		And search query "Corey" is given
		Then system will respond with "Match:"
		And system will respond with '3. book: "Leviathan Wakes" by James S. A. Corey'

	Scenario: No matches notification given when there are no matches
		Given the book "Stargate Atlantis: Homecoming" by "Jo Graham and Melissa Scott" has been added
		And the book "The No. 1 Ladies' Detective Agency" by "Alexander McCall Smith" has been added
		And the book "Leviathan Wakes" by "James S. A. Corey" has been added
		When command "search" is selected
		And search query "Seiska" is given
		Then system will respond with "No results :("


