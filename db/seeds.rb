# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Company.create(name: "eMobile", contact_name: "Juan Torres", webpage: "www.emobile.com.mx", email1: "emobile@emobile.com.mx", phone1: "18009345674", phone2: "18009345674", fax: "18009345674", address1: "N/A", address2: "N/A", zip: 12345, city: "Chihuahua", state: "chihuahua", country: "Mexico", description: "N/A")
Branch.create(name: "eMobile 1", contact_name: "Juan Torres", webpage: "www.emobile.com.mx", email1: "emobile1@emobile.com", phone1: "18009345674", phone2: "18009345674", fax: "18009345674", address1: "N/A", address2: "N/A", zip: 12345, city: "Chihuahua", state: "chihuahua", country: "Mexico", description: "N/A", company_id: 1, main_branch: true)
Branch.create(name: "eMobile 2", contact_name: "Juan Torres", webpage: "www.emobile.com.mx", email1: "emobile2@emobile.com", phone1: "18009345674", phone2: "18009345674", fax: "18009345674", address1: "N/A", address2: "N/A", zip: 12345, city: "Chihuahua", state: "chihuahua", country: "Mexico", description: "N/A", company_id: 1, main_branch: false)
Branch.create(name: "eMobile 3", contact_name: "Juan Torres", webpage: "www.emobile.com.mx", email1: "emobile3@emobile.com", phone1: "18009345674", phone2: "18009345674", fax: "18009345674", address1: "N/A", address2: "N/A", zip: 12345, city: "Chihuahua", state: "chihuahua", country: "Mexico", description: "N/A", company_id: 1, main_branch: false)
Branch.create(name: "eMobile 4", contact_name: "Juan Torres", webpage: "www.emobile.com.mx", email1: "emobile4@emobile.com", phone1: "18009345674", phone2: "18009345674", fax: "18009345674", address1: "N/A", address2: "N/A", zip: 12345, city: "Chihuahua", state: "chihuahua", country: "Mexico", description: "N/A", company_id: 1, main_branch: false)

Role.create(name: "System Administrator", protected: true, super_admin: true, company_admin: false, branch_admin: false, super_manager: false, manager: false, routes_admin: false, seller: false, secretary: false, driver: false, client: false, guess: false, description: "Can manage the complete system.")
Role.create(name: "Company Administrator", protected: true, super_admin: false, company_admin: true, branch_admin: false, super_manager: false, manager: false, routes_admin: false, seller: false, secretary: false, driver: false, client: false, guess: false, description: "Can manage company.")
Role.create(name: "Branch Administrator", protected: true, super_admin: false, company_admin: false, branch_admin: true, super_manager: false, manager: false, routes_admin: false, seller: false, secretary: false, driver: false, client: false, guess: false, description: "Can manage branch.")
Role.create(name: "Super Manager", protected: true, super_admin: false, company_admin: false, branch_admin: false, super_manager: true, manager: false, routes_admin: false, seller: false, secretary: false, driver: false, client: false, guess: false, description: "Can manage client company.")
Role.create(name: "Manager", protected: true, super_admin: false, company_admin: false, branch_admin: false, super_manager: false, manager: true, routes_admin: false, seller: false, secretary: false, driver: false, client: false, guess: false, description: "Can manage client branch.")
Role.create(name: "Routes Manager", protected: true, super_admin: false, company_admin: false, branch_admin: false, super_manager: false, manager: false, routes_admin: true, seller: false, secretary: false, driver: false, client: false, guess: false, description: "Can manage routes.")
Role.create(name: "Seller", protected: true, super_admin: false, company_admin: false, branch_admin: false, super_manager: false, manager: false, routes_admin: false, seller: true, secretary: false, driver: false, client: false, guess: false, description: "Can manage products.")
Role.create(name: "Scretary", protected: true, super_admin: false, company_admin: false, branch_admin: false, super_manager: false, manager: false, routes_admin: false, seller: false, secretary: true, driver: false, client: false, guess: false, description: "Can manage clients.")
Role.create(name: "Driver", protected: true, super_admin: false, company_admin: false, branch_admin: false, super_manager: false, manager: false, routes_admin: false, seller: false, secretary: false, driver: true, client: false, guess: false, description: "Can manage orders to deliver.")
Role.create(name: "Client", protected: true, super_admin: false, company_admin: false, branch_admin: false, super_manager: false, manager: false, routes_admin: false, seller: false, secretary: false, driver: false, client: true, guess: false, description: "Can manage his/her orders.")
Role.create(name: "Guess", protected: true, super_admin: false, company_admin: false, branch_admin: false, super_manager: false, manager: false, routes_admin: false, seller: false, secretary: false, driver: false, client: false, guess: true, description: "Can read part of the system.")

User.create(first_name: 'System', last_name: 'Administrator', username: 'administrator', email: 'alexjabf@gmail.com', phone1: "6142479483", phone2: "6142479483", fax: "6142479483", address1: "Calle paseos de madera #14521", address2: "Paseos de chihuahua", city: "Chihuahua", state: "Chihuahua", zip: 31125, country: "Mexico", password: 'Password1', password_confirmation: 'Password1', confirmed_at: Date.today, role_id: 1, company_id: 1, branch_id: 1, active: true)
User.create(first_name: 'Company', last_name: 'Administrator', username: 'companyadmin', email: 'alexjabf@hotmail.com', phone1: "6142479483", phone2: "6142479483", fax: "6142479483", address1: "Calle paseos de madera #14521", address2: "Paseos de chihuahua", city: "Chihuahua", state: "Chihuahua", zip: 31125, country: "Mexico", password: 'Password1', password_confirmation: 'Password1', confirmed_at: Date.today, role_id: 2, company_id: 1, branch_id: 2,  active: true)
User.create(first_name: 'Branch', last_name: 'Administrator', username: 'branchadmin', email: 'alexjabf1@hotmail.com', phone1: "6142479483", phone2: "6142479483", fax: "6142479483", address1: "Calle paseos de madera #14521", address2: "Paseos de chihuahua", city: "Chihuahua", state: "Chihuahua", zip: 31125, country: "Mexico", password: 'Password1', password_confirmation: 'Password1', confirmed_at: Date.today, role_id: 3, company_id: 1, branch_id: 2,  active: true)
User.create(first_name: 'Guess', last_name: 'User', username: 'guess.user', email: 'alexjabf2@hotmail.com', phone1: "6142479483", phone2: "6142479483", fax: "6142479483", address1: "Calle paseos de madera #14521", address2: "Paseos de chihuahua", city: "Chihuahua", state: "Chihuahua", zip: 31125, country: "Mexico", password: 'Password1', password_confirmation: 'Password1', confirmed_at: Date.today, role_id: 10, company_id: 1, branch_id: 2, active: true)