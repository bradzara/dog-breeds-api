# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

dog = Dog.new(name: "Boxer", size: "medium", origin: "Germany")
dog.save

dog = Dog.new(name: "Siberian Husky", size: "medium", origin: "Siberia")
dog.save

dog = Dog.new(name: "Cane Corso", size: "large", origin: "Italy")
dog.save