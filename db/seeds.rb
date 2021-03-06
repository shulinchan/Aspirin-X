Student.delete_all
Student.reset_pk_sequence
Teacher.delete_all
Teacher.reset_pk_sequence
Course.delete_all
Course.reset_pk_sequence
Assignment.delete_all
Assignment.reset_pk_sequence
Submission.delete_all
Submission.reset_pk_sequence
Enrollment.delete_all
Enrollment.reset_pk_sequence
Announcement.delete_all
Announcement.reset_pk_sequence

Student.create(name: 'John Doe', email: 'johndoe1@brandeis.edu', password: '123456', password_confirmation: '123456')
Student.create(name: 'Jane Doe', email: 'janedoe@brandeis.edu', password: '123456', password_confirmation: '123456')
Student.create(name: 'Foo Bar', email: 'foobar@brandeis.edu', password: '123456', password_confirmation: '123456')
Student.create(name: 'Bar Foo', email: 'barfoo@brandeis.edu', password: '123456', password_confirmation: '123456')
Student.create(name: 'No One', email: 'noone@brandeis.edu', password: '123456', password_confirmation: '123456')

Teacher.create(name: 'Pito Salas', email: 'rpsalas@brandeis.edu', password: '123456', password_confirmation: '123456')
Teacher.create(name: 'Antonella', email: 'antonella@brandeis.edu', password: '123456', password_confirmation: '123456')
Teacher.create(name: 'Tim Hickey', email: 'tjhickey@brandeis.edu', password: '123456', password_confirmation: '123456')

Course.create(course_code:"11a", course_title:"Intro to Programming", teacher_id: 3)
Course.create(course_code:"12b", course_title:"Advanced Programming Techniques", teacher_id: 1)
Course.create(course_code:"21a", course_title:"Data Structures and Algorithms", teacher_id: 2)
Course.create(course_code:"166b", course_title:"Capstone: Software Engineering", teacher_id: 1)

Assignment.create(course_code: "11a", instructions: "Write Fib", template: "public class Solution {\n\t\n}", due_date: Time.now.strftime("%d/%m/%Y %H:%M"))
Assignment.create(course_code: "11a", instructions: "Print a bunch of sentences.", template: "public class Solution {\n\t\n}", due_date: Time.now.strftime("%d/%m/%Y %H:%M"))
Assignment.create(course_code: "12b", instructions: "Write Fib-iter", template: "public class Solution {\n\t\n}", due_date: Time.now.strftime("%d/%m/%Y %H:%M"))
Assignment.create(course_code: "12b", instructions: "Write a Java program that utilizes multiple classes", template: "public class Solution {\n\t\n}", due_date: Time.now.strftime("%d/%m/%Y %H:%M"))
Assignment.create(course_code: "166b", due_date: DateTime.new(2017, 10, 11, 20, 10, 0), template: "", instructions: "For this assignment, you are to write a ruby program that reads in a large data set and produces some analysis.")
Assignment.create(course_code: "166b", due_date: DateTime.new(2017, 11, 11, 20, 10, 0), template: "", instructions: "Building on (PA) Movies Part 1, we are now going to include a prediction method that will predict the rating a user would give to a movie and you are to run some tests to determine how accurate your method is.\n\nTake a look at the data files. In addition to the file u.data you will find a series of pairs of files, u?.base and u?.test. They have the exact same format as u.data, but partitioned into batches. For example, u1.test contains 2000 ratings and u1.base contains the other 8000 ratings. The same is true for all the other u?, except they contain different subsets.\n\nWhat you will be designing for movies_2 is a very simplistic machine learning algorithm. The goal is to correctly guess what a certain user would rate a certain movie. Often in machine learning (and actually in all kinds of forecasting and modeling) we partition historical data (that is known to be real) into two batches. In our case we use the first batch to learn what we can about the patterns in users ratings, and create a prediction \“model\”. This is the training set of for us, the \“base\”.\n\nThen we will use the second batch (the \“test\” set) to see how good our prediction model is. We can take each record in the test set, where we will find how user u rated movie m. We use our model to predict (guess) what the rating was, and we look at the real world result from the test set record to see what that user actually did. The difference between the two is a measure of how good our model is.\n\nIf we do this process across all the records in the test set, we can find an average and standard deviation (and whatever other statistics) of the error. This is what we are going to do.")
Assignment.create(course_code: "166b", due_date: DateTime.new(2017, 12, 11, 20, 10, 0), template: "", instructions: "This assignment introduces the MVC architecture of Rails as you design a Web app in which users can select university classes. The data you need is available at This Google Drive folder. The folder has 3 JSON files, each is a JSON array. Note: If you are using or already loaded data from the original URL, then you will need to iterate through each line of that file and parsing each line as JSON - The entire file is not JSON formatted, just individual lines. Also DO NOT use/load entries of type \“section\” - there are too many of these and you’ll end up exceeding the 10K records for a free database on Heroku. Only use data of type instructor, course and subject.\n\nThe purpose of this assignment is for each student to independently practice their knowledge of the material separate from the team work. What you learn and practice here will definitely contribute to your work on the team project.\n\nIn the first part (of 3) you will build a basic rails application that imports and displays the data according to the instructions below.")
Assignment.create(course_code: "21a", instructions: "Print even #", template: "public class Solution {\n\t\n}", due_date: Time.now.strftime("%d/%m/%Y %H:%M"))

Submission.create(student_id: 4, assignment_id: 3, source_code: "public class Solution {\n\treturn null;\n}", submission_date: Time.now.strftime("%d/%m/%Y %H:%M"), grade: 100)
Submission.create(student_id: 3, assignment_id: 2, source_code: "public class Solution {\n\treturn null;\n}", submission_date: Time.now.strftime("%d/%m/%Y %H:%M"), grade: 80)
Submission.create(student_id: 2, assignment_id: 1, source_code: "public class Solution {\n\treturn null;\n}", submission_date: Time.now.strftime("%d/%m/%Y %H:%M"), grade: 90)
Submission.create(student_id: 1, assignment_id: 1, source_code: "public class Solution {\n\treturn null;\n}", submission_date: Time.now.strftime("%d/%m/%Y %H:%M"), grade: 90)

Enrollment.create(student_id:1, course_code:"11a", final_grade:100.0)
Enrollment.create(student_id:2, course_code:"11a", final_grade:100.0)
Enrollment.create(student_id:3, course_code:"12b", final_grade:100.0)
Enrollment.create(student_id:4, course_code:"21a", final_grade:100.0)
Enrollment.create(student_id:4, course_code:"166b", final_grade:100.0)

Announcement.create(course_code:"11a", announcement_date: DateTime.new(2017, 10, 11, 20, 10, 0), announcement_body:"Checking if everyone can see announcements.")
Announcement.create(course_code:"12b", announcement_date: DateTime.new(2017, 10, 11, 20, 10, 0), announcement_body:"The new programming assignment has been released.")
Announcement.create(course_code:"21a", announcement_date: DateTime.new(2017, 10, 11, 20, 10, 0), announcement_body:"The new programming assignment has been released.")
Announcement.create(course_code:"11a", announcement_date: DateTime.new(2017, 10, 11, 20, 10, 0), announcement_body:"The new programming assignment has been released.")
