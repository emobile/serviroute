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

Status.create(name: "Registrada", description: "La orden ha sido registrada en el sistema.", hierarchy: 1, model_name: "order")
Status.create(name: "Entregada", description: "La orden ha sido entregada.", hierarchy: 3, model_name: "order")
Status.create(name: "Regresada", description: "La orden ha sido regresada por el cliente.", hierarchy: 4, model_name: "order")
Status.create(name: "Cancelada", description: "La orden ha sido cancelada por el cliente.", hierarchy: 5, model_name: "order")
Status.create(name: "Abierta", description: "La ruta ha sido creada y se encuentra abierta para modificaciones", hierarchy: 1, model_name: "route")
Status.create(name: "En Transito", description: "La ruta esta en transito y no puede ser modificada.", hierarchy: 2, model_name: "route")
Status.create(name: "Cerrada", description: "La ruta ha sido cerrada y no puede ser modificada.", hierarchy: 3, model_name: "route")

Cellphone.create(phone_number: "(614) 123-4561", model: "iPhone 5s", brand: "Apple", color: "Black", ope_system: "iOS 7", imei: "12345678901234", user_id: 1, branch_id: 1, company_id: 1)
Cellphone.create(phone_number: "(614) 123-4562", model: "iPhone 5", brand: "Apple", color: "White", ope_system: "iOS 7", imei: "12345672901234", user_id: 1, branch_id: 1, company_id: 1)
Cellphone.create(phone_number: "(614) 123-4563", model: "iPhone 4s", brand: "Apple", color: "Black", ope_system: "iOS 6", imei: "12345674901234", user_id: 1, branch_id: 1, company_id: 1)
Cellphone.create(phone_number: "(614) 123-4564", model: "iPhone 4", brand: "Apple", color: "White", ope_system: "iOS 6", imei: "12345678951234", user_id: 1, branch_id: 1, company_id: 1)
Cellphone.create(phone_number: "(614) 123-4565", model: "iPhone 3s", brand: "Apple", color: "Black", ope_system: "iOS 5", imei: "12345678961234", user_id: 1, branch_id: 1, company_id: 1)
Cellphone.create(phone_number: "(614) 123-4566", model: "Nokia Lumia", brand: "Nokia", color: "Black", ope_system: "windows phone", imei: "123456789012346", user_id: 2, branch_id: 2, company_id: 2)
Cellphone.create(phone_number: "(614) 123-4567", model: "Razr D3", brand: "Motorola", color: "White", ope_system: "Android 2.1", imei: "123456778965456", user_id: 3, branch_id: 2, company_id: 2)
Cellphone.create(phone_number: "(614) 123-4568", model: "Ilium", brand: "Lanix", color: "Pink", ope_system: "Android 4.0", imei: "963258741253601", user_id: 4, branch_id: 2, company_id: 2)
Cellphone.create(phone_number: "(614) 123-4569", model: "iPhone 4s", brand: "Apple", color: "Black", ope_system: "iOS 7", imei: "123456965328547", user_id: 5, branch_id: 2, company_id: 2)
Cellphone.create(phone_number: "(614) 123-4560", model: "Asha 205", brand: "Nokia", color: "White", ope_system: "windows phone", imei: "963258874569852", user_id: 6, branch_id: 2, company_id: 2)

Truck.create(brand: "Mercedes-Benz", model: "MB1", branch_id: 1, company_id: 1, plate_no: "as123", year: 2000)
Truck.create(brand: "Dina", model: "D1", branch_id: 1, company_id: 1, plate_no: "as223", year: 2001)
Truck.create(brand: "Volvo", model: "V1", branch_id: 1, company_id: 1, plate_no: "as323", year: 2002)
Truck.create(brand: "Mercedes-Benz", model: "MB2", branch_id: 1, company_id: 1, plate_no: "as423", year: 2003)
Truck.create(brand: "Dina", model: "D2", branch_id: 1, company_id: 1, plate_no: "as523", year: 2004)
Truck.create(brand: "Volvo", model: "V2", branch_id: 2, company_id: 1, plate_no: "as623", year: 2005)
Truck.create(brand: "Mercedes-Benz", model: "MB3", branch_id: 2, company_id: 1, plate_no: "as723", year: 2006)
Truck.create(brand: "Dina", model: "D3", branch_id: 2, company_id: 2, plate_no: "as823", year: 2007)
Truck.create(brand: "Volvo", model: "V3", branch_id: 2, company_id: 2, plate_no: "as923", year: 2008)
Truck.create(brand: "Mercedes-Benz", model: "MB4", branch_id: 2, company_id: 2, plate_no: "as113", year: 2009)
Truck.create(brand: "Dina", model: "D4", branch_id: 3, company_id: 2, plate_no: "as121", year: 2010)
Truck.create(brand: "Volvo", model: "V4", branch_id: 3, company_id: 2, plate_no: "as133", year: 2011)
Truck.create(brand: "Mercedes-Benz", model: "MB5", branch_id: 3, company_id: 2, plate_no: "as143", year: 2012)
Truck.create(brand: "Dina", model: "D5", branch_id: 3, company_id: 2, plate_no: "as153", year: 2013)
Truck.create(brand: "Volvo", model: "V5", branch_id: 3, company_id: 2, plate_no: "as163", year: 2014)


Message.create(user_id: 1, branch_id: 1, company_id: 1, message: "Prueba 1")
Message.create(user_id: 2, branch_id: 2, company_id: 1, message: "Prueba 1")
Message.create(user_id: 3, branch_id: 2, company_id: 1, message: "Prueba 3")
Message.create(user_id: 4, branch_id: 2, company_id: 1, message: "Prueba 4")
Message.create(user_id: 1, branch_id: 1, company_id: 1, message: "Prueba 5")
Message.create(user_id: 2, branch_id: 2, company_id: 1, message: "Prueba 6")
Message.create(user_id: 3, branch_id: 2, company_id: 1, message: "Prueba 7")
Message.create(user_id: 4, branch_id: 2, company_id: 1, message: "Prueba 8")
Message.create(user_id: 1, branch_id: 1, company_id: 1, message: "Prueba 9")
Message.create(user_id: 2, branch_id: 2, company_id: 1, message: "Prueba 10")
Message.create(user_id: 3, branch_id: 2, company_id: 1, message: "Prueba 11")
Message.create(user_id: 4, branch_id: 2, company_id: 1, message: "Prueba 12")
