#!/usr/local/bin/ruby
require 'pstore'

# Name:Kethan Pilla
# Class: CS 410W
# Date: 03/10/2025
# Description: This script implements a simple Student Management System using persistent objects. It allows users to interactively add, list, update, and delete student records. The script defines a Student class with member variables (name, major, gender, age) and methods for displaying information and updating a student's major. Data is stored persistently in a file, so changes are retained between runs.

# Student class
class Student
  attr_accessor :name, :major, :gender, :age;

  # Method to display student details.
  def display
    puts "Name: " + @name
    puts "Major: " + @major
    puts "Gender: " + @gender
    puts "Age: " + @age.to_s
  end

  # Method to update the student's major.
  def update_major(new_major)
    @major = new_major
  end
end

# Initialize persistent storage
store = PStore.new("disneyFile")
store.transaction do
  @students = store[:people] || Array.new
end

# Menu: choose any one option
choice = "Y"
while choice == "Y" do
  puts "\nStudent Management System"
  puts "1. List all students"
  puts "2. Add a new student"
  puts "3. Update a student's major"
  puts "4. Delete a student"
  puts "5. Exit"
  print "Enter your choice: "
  menu_choice = gets.chomp

# Reference(if/else):tutorialspoint/ruby/if_else
  if menu_choice == "1"
    if @students.empty?
      puts "No students found."
    else
      for i in 0...@students.length
        puts "\nStudent ##{i+1}:"
        @students[i].display
      end
    end
  elsif menu_choice == "2"
    new_student = Student.new
    print "Enter student name: "
    new_student.name = gets.chomp
    print "Enter student major: "
    new_student.major = gets.chomp
    print "Enter student gender: "
    new_student.gender = gets.chomp
    print "Enter student age: "
    new_student.age = gets.chomp.to_i
    @students << new_student
    store.transaction do
      store[:people] = @students
    end
    puts "Student added successfully."
  elsif menu_choice == "3"
    if @students.empty?
      puts "No students found."
    else
      print "Enter student number to update (1 to #{@students.length}): "
      num = gets.chomp.to_i
      if num < 1 or num > @students.length
        puts "Invalid student number."
      else
        student = @students[num - 1]
        print "Enter new major for " + student.name + ": "
        new_major = gets.chomp
        student.update_major(new_major)
        store.transaction do
          store[:people] = @students
        end
        puts "Student updated successfully."
      end
    end
  elsif menu_choice == "4"

    # Reference(string.empty?): geeksforgeeks/ruby_string_empty
    # Reference(delete): geeksforgeeks/ruby_delete
    if @students.empty?
      puts "No students found."
    else
      print "Enter student number to delete (1 to #{@students.length}): "
      num = gets.chomp.to_i
      if num < 1 or num > @students.length
        puts "Invalid student number."
      else
        deleted = @students.delete_at(num - 1)
        store.transaction do
          store[:people] = @students
        end
        puts "Student " + deleted.name + " deleted successfully."
      end
    end
  elsif menu_choice == "5"
    puts "Exiting program. Have a nice day!"
    exit
  else
    puts "Invalid choice."
  end

  print "\nWould you like to continue? (Y/N): "
  choice = gets.chomp
end

if choice == "N" then
  print "Have a nice day\n"
  exit
else
  print "Error: Wrong input exiting program\n"
end

