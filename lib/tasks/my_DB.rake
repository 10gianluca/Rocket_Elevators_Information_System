require 'pg'
require 'faker'

conn = PG.connect(host: "localhost", dbname: "datawarehouse", :user => "glory", :password => "montreal")

namespace :pg do

  task reset: :environment do
    Rake::Task["pg:init"].invoke
    Rake::Task["pg:FactQuotes"].invoke
    Rake::Task["pg:FactContact"].invoke
    Rake::Task["pg:FactElevator"].invoke
    Rake::Task["pg:DimCustomers"].invoke
  end

  task db: :environment do
    conn.exec("DROP DATABASE IF EXISTS DataWarehouse")
    conn.exec("CREATE DATABASE DataWarehouse")
  end


  task init: :environment do
    # Create the table
    conn.exec "DROP TABLE IF EXISTS FactQuotes"
    conn.exec "CREATE TABLE FactQuotes(quoteId INTEGER, created_at DATE, companyName TEXT, email TEXT, nbElevator INTEGER)"

    conn.exec "DROP TABLE IF EXISTS FactContact"
    conn.exec "CREATE TABLE FactContact(contactId INTEGER, creation DATE, companyName TEXT, email TEXT, projectName TEXT)"

    conn.exec "DROP TABLE IF EXISTS FactElevator"
    conn.exec "CREATE TABLE FactElevator(serialNumber TEXT, dateOfCommisionning DATE, buildingid INTEGER, customerid INTEGER, buildingCity TEXT)"

    conn.exec "DROP TABLE IF EXISTS DimCustomers"
    conn.exec "CREATE TABLE DimCustomers(creation DATE, companyName TEXT, fullNameOfCompanyMainContact TEXT, emailOfTheCompanyMainContact TEXT, nbElevator INTEGER, customerCity TEXT)"
    
  end

  task FactQuotes: :environment do
    # Fill the FactQuotes table
    Quote.find_each do |q|
      conn.exec ("INSERT INTO FactQuotes (quoteId, created_at, companyName, email, nbElevator) VALUES ('#{q.id}', '#{q.created_at}', '#{Faker::Company.unique.name.gsub("'", " ")}', '#{Faker::Internet.email}', '#{q.cage_amount}')")
  end  
  end

  task FactContact: :environment do
    Lead.find_each do |l|
        conn.exec ("INSERT INTO FactContact (contactId, creation, companyName, email, projectName) VALUES ('#{l.id}', '#{l.created_at}', '#{l.company_name.gsub("'", " ")}', '#{l.email}', '#{l.project_name.gsub("'", " ")}')")
    end
  end

  task FactElevator: :environment do
    Address.find_each do |a|
        conn.exec ("INSERT INTO FactElevator (buildingCity) VALUES ('#{a.city&.gsub("'", " ")}')")
    end 
            Customer.find_each do |c|
                conn.exec ("INSERT INTO FactElevator (customerId) VALUES ('#{c.id}')")
            end
                Elevator.find_each do |e|#check for 'column_id' syntax.
                    conn.exec ("INSERT INTO FactElevator (serialNumber, dateOfCommisionning, buildingId) VALUES ('#{e.serialNumber}', '#{e.commissioningDate}', '#{e.column_id}')")
                end
  end

  task DimCustomers: :environment do
    Address.find_each do |a|
      conn.exec ("INSERT INTO DimCustomers (customerCity) VALUES ('#{a.city&.gsub("'", " ")}')")
    end
      Customer.find_each do |c|
        conn.exec ("INSERT INTO DimCustomers (creation, companyName, fullNameOfCompanyMainContact, emailOfTheCompanyMainContact) VALUES ('#{c.customer_creation_date}', '#{c.company_name&.gsub("'", " ")}', '#{c.full_name_of_company_contact&.gsub("'", " ")}', '#{c.email_of_company_contact}')")
      end
        Quote.find_each do |qo|
          conn.exec ("INSERT INTO DimCustomers (nbElevator) VALUES ('#{qo.cage_amount}')")
        end

        
      end    
      conn.exec ("SELECT * FROM DimCustomers WHERE customerCity IS NOT NULL AND creation IS NOT NULL AND companyName IS NOT NULL AND fullNameOfCompanyMainContact IS NOT NULL AND emailOfTheCompanyMainContact IS NOT NULL AND nbElevator IS NOT NULL;")

    end

  namespace :qs do
    
    q_one = "SELECT COUNT(contactId) EXTRACT(MONTH FROM t.creation) as MonthOfDate
    FROM FactContact t"
    q_two = "SELECT COUNT(quoteId) created_at FROM FactQuotes GROUP BY MONTH(creation)"
    q_three = "SELECT id, nbElevator FROM DimCustomers"
    
    task q_one: :environment do
        conn.exec (q_one)
    end

    task q_two: :environment do
        conn.exec (q_two)
    end

    task q_three: :environment do
        conn.exec (q_three)
    end
  end