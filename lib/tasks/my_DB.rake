require 'pg'
conn = PG.connect(host: "localhost", dbname: "datawarehouse", :user => "glory", :password => "montreal")

namespace :pg do

  task reset: :environment do
    Rake::Task["dwh:init"].invoke
    Rake::Task["dwh:FactQuotes"].invoke
    Rake::Task["dwh:FactContact"].invoke
    Rake::Task["dwh:FactElevator"].invoke
    Rake::Task["dwh:DimCustomers"].invoke
  end

  task db: :environment do
    conn.exec("DROP DATABASE IF EXISTS DataWarehouse")
    conn.exec("CREATE DATABASE DataWarehouse")
  end


  task init: :environment do
    # Create the table
    conn.exec "DROP TABLE IF EXISTS FactQuotes"
    conn.exec "CREATE TABLE FactQuotes(quoteId INTEGER, creation DATE, companyName TEXT, email TEXT, nbElevator INTEGER)"

    conn.exec "DROP TABLE IF EXISTS FactContact"
    conn.exec "CREATE TABLE FactContact(contactId INTEGER, creation DATE, companyName TEXT, email TEXT, projectName TEXT)"

    conn.exec "DROP TABLE IF EXISTS FactElevator"
    conn.exec "CREATE TABLE FactElevator(serialNumber INTEGER, dateOfCommisionning DATE, buildingid INTEGER, customerid INTEGER, buildingCity TEXT)"

    conn.exec "DROP TABLE IF EXISTS DimCustomers"
    conn.exec "CREATE TABLE DimCustomers(creation DATE, companyName TEXT, companyMainContact TEXT, fullNameOfCompanyMainContact TEXT, emailOfTheCompanyMainContact TEXT, nbElevator INTEGER, customerCity TEXT)"
    
  end

  task FactQuotes: :environment do
    # Fill the FactQuotes table
    Quote.find_each do |q|
      conn.exec ("INSERT INTO FactQuotes (quoteId, created_at, companyName, email) VALUES ('#{q.id}', '#{q.creation}', '#{q.companyName.gsub("'", " ")}', '#{q.email}')")
  end  
end

task FactContact: :environment do
  Lead.find_each do |l|
      conn.exec ("INSERT INTO FactContact (contactId, creation, companyName, email, projectName) VALUES ('#{l.id}', '#{l.creation}', '#{l.companyName.gsub("'", " ")}', '#{l.email}', '#{l.nameProject.gsub("'", " ")}')")
  end
end

task FactElevator: :environment do

  Addresse.find_each do |a|
      conn.exec ("INSERT INTO FactElevator (buildingCity) VALUES ('#{a.city.gsub("'", " ")}')")
  end
          Customer.find_each do |c|
              conn.exec ("INSERT INTO FactElevator (customerId) VALUES ('#{c.id}')")
          end
              Elevator.find_each do |e|#check for 'column_id' syntax.
                  conn.exec ("INSERT INTO FactElevator (serialNumber, dateOfCommisionning, buildingId) VALUES ('#{e.serial_number}', '#{e.dateOfCommissioning}', '#{e.column_id}')")
              end
  end

task DimCustomers: :environment do
  Addresse.find_each do |a|
      conn.exec ("INSERT INTO DimCustomers (customerCity) VALUES ('#{a.city.gsub("'", " ")}')")
  end
      Customer.find_each do |c|
          conn.exec ("INSERT INTO DimCustomers (creation, companyName, fullNameOfCompanyMainContact, emailOfTheCompanyMainContact) VALUES ('#{c.dateCreation}', '#{c.companyName.gsub("'", " ")}', '#{c.fullName}', '#{c.email}')")
      end
          Elevator.find_each do |m|
              conn.exec ("INSERT INTO DimCustomers (nbElevator) VALUES ('#{m.id}')")
          end
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
end