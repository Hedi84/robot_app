Toy Robot Simulator

This is a simple toy robot simulator app. To run the app, open the terminal and use the command `ruby ;ib/app.rb` to run the app in your terminal. You will be asked to give an initial placement for your toy robot in the format 'PLACE' then x and y location separated by a comma, and a direction separated by another comma. For example: `PLACE 0,0,NORTH`
Failing to give a initial placement in the correct format will prompt the app to ask again.

After the initial placement has been given, the user can use the following commands:
`MOVE` to move the robot one step in the chosen direction.
`LEFT` to shift the direction one step to the right.
`RIGHT` to shift the direction one step the the left.
`REPORT` to request a report of the current placement and direction.
The `PLACE` command can be used any time to choose a certain placement.
`STOP` will terminate the program.

The robot can never move off the table surface. It will instead remain on the edge of the table, no matter how many times it is moved. Failure to give a valid `PLACE` command will result in the robot keeping the exact same place.

To run all specs for this app, simply type `rake` on the command line when in the robot_app folder. It is possible to run individual spec files with the command `rspec spec/file_name`. 

A text file of random test data and output has been added to this directory.

I have chosen to add tests for all files, however, tests for the view and simulator classes could have been expanded by using mocks. I did not think it would add any extra value in this case. The board class, where most logic is executed, has some more extensive unit tests.

The simple app follows an MVC pattern in which the simulator acts as a controller class, and board being its only model. The view class is in charge of retrieving all user input and handling all output. 

Whereas multiple solutions are possible for this challenge, and more attention could be paid on parsing user input, I have chosen to keep the solution relatively simple and easy to read. A change that could be added for example is the use of Regex for parsing user input and making sure the 'PLACE' commands are in the correct format. For doing this, I would have added a helper class to keep the parsing logic separate from the controller logic.