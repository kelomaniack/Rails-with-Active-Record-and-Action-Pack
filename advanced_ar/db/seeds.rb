# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Person.destroy_all

Person.create! [
    { first_name: "Kalman", last_name: "Smith", age: 33, login: "kman", pass: "abc123"},
    { first_name: "John", last_name: "Whatever", age: 27, login: "john1", pass: "123abc"},
    { first_name: "Michael", last_name: "Smith", age: 15, login: "mike", pass: "not_telling"},
    { first_name: "Josh", last_name: "Oreck", age: 57, login: "josh", pass: "password1"},
    { first_name: "John", last_name: "Smith", age: 27, login: "john2", pass: "no_idea"},
    { first_name: "Bill", last_name: "Gates", age: 75, login: "bill", pass: "windows3.1"},
    { first_name: "Lebron", last_name: "James", age: 30, login: "bron", pass: "need more rings"}]

PersonalInfo.create! [
    { height: 5.5, weight: 200.0, person_id: 31}
                     ]

Person.first.jobs.create! [
    {title: "Developer", company: "MS", position_id: "#1234"},
    {title: "Developer", company: "MS", position_id: "#1235"}]

Person.last.jobs.create! [
    {title: "Sr. Developer", company: "MS", position_id: "#5234"},
    {title: "Sr. Developer", company: "MS", position_id: "#5235"}]