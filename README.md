# Instructions

Write a ruby script that:
**a.** Receives a log as argument (webserver.log is provided) e.g.: ./parser.rb webserver.log
**b.** Returns the following:

> list of webpages with most page views ordered from most pages views to less page views e.g.:

- /home 90 visits
- /index 80 visits
- etc...

> list of webpages with most unique page views also ordered
> e.g.:

- /about/2 8 unique views
- /index 5 unique views
- etc...

## Solution

To run the script pleas enter the command

```ruby
ruby report.rb
```

in your terminal

To solve this problem, we need to extract the data from the log file, format it in a way that helps us manipulate it, and then produce the reports.

Using OOP we have several objects:

- Result 1: a list of pages sorted by most visited.
- Result 2: a list of pages sorted my highest number of unique visits.
- Report: takes one argument to produce the report as per requirements.
- page
- ip address
- page views

Considering what we need to do to create the report, it might not be necessary to create classes for each thing except for Result 1 and Result 2 and the report itself, leaving aside that in Ruby everything is an object.

We could create a class to manipulate the data, and with more time, I would have liked to investigate a better way to organise my code my data parsing methods as I have seen in other python scripts.

I tried to write methods that would perform specific functions and refactored to avoid repetition, for example, there are three methods that prepare data to create a report, but one covers methods needed for both reports, and the others are for their own report each.

Overall, I felt I would have liked more time to make sure my code was as clean as possible, and I could have better variable names.

I would have also liked to have more time to have better test coverage.

I ran out of time to create a test for my report and that brought down my test coverage.

I also run into trouble when attempting to test my result formatting. I know I specified the return to be "nil" to avoid the implicit return line from ruby, but this is not what I intended to print to the terminal.

This project was a lot of fun to work on and hardly noticed the time passing by, but I would have liked more time to fix my tests make sure I followed best practice when freating a script such as these.
