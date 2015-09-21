## Recursive People Creator

Take a CSV file which contains a person's first and last name, email address, and whatever else your heart desires (because we're on whiteboards and there is no CSV file), and create a recursive solution for creating each row into Person objects. 

We're all probably familiar with the good 'ol ```CSV.foreach('people.csv') {|row| Person.new(row)}``` solution, which is probably as efficient and basic anyone will ever need it to be. But that's no fun. So, let's bring on recursion. 

Where to start:

* Don't worry about the syntax for dealing with CSVs if you don't remember it, the recursive logic is what's important here. Ask if someone's available to answer, and if not just leave a comment with pseudocode for any CSV syntax along with what you want it to do specifically, and move on for now. 
* Remember that recursion is a very broad concept, and not tied to the term "recursive method".
* Don't worry about defining the Person class. For now let's assume it is a very simple class which only contains an initialize method and the properties of "first name", "last name", "email address", etc. Basically whatever data you'd like to use to make the Person from the CSV is included in the Person class.

### Solutions
Add a link to your solution here:

#### Resources:
[Link to a basic 200-person CSV file](http://pastebin.com/J0mF3YrW)

