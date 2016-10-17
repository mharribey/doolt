# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#crée les tâches

Task.create(task_title: 'Couper les arbres',
			task_description: 'Il faut penser à couper les arbres pour maman',
			deadline: '2016-12-23',
	)
