# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

professor = Professor.create(
	fullname: 'Even Zuriel Torres Villegas',
	username: 'Zuriel Torres',
	email: 'zurieltv@ciencias.unam.mx',
	password_digest: 'password',
	like: 10000,
	dislike: 0,
	help: 9.4,
	clarity: 10,
	grade: 11,
	school: 'UNAM',
	biography: 'Biografía',
	interests: 'Intereses'
	)

subject = Subject.create(
	name: 'Matemáticas',
	description: 'Lorem Ipsum',
	area: 'Ciencias exactas'
	)

professor_subject = ProfessorSubject.create(
	professor: professor,
	subject: subject
	)