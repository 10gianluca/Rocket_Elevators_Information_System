ABOUT
For weeks 4-5 of the Odyssey program, we had to take the Rocket Elevators static website developped during the Genesis and make it dynamic using Ruby on Rails.
URL for deployed website: rocketelevatorsss.com
Week 4:
	-Front-end:
		-tranlating html/css pages to erb
		-set up sign-up and login pages for employees and customers
		
	-Back-end:
		-set-up backoffice page for employees
		-create data tables for the Quote Request Form, Employees and Users
		-populate Quote Request Form data entries in the Quote Request table
Week 5:
	-Back-End: create relationnal database and data wearhouse


INSTALLATIONS & VERSIONS
Built with:
Ubuntu 22.04 LTS
Ruby v 2.7.6
Rails v 5.2.8.1
mySQL
PostgresQL
gems and bundles:
	rails-admin gem for the backoffice
	pg gem for the data wearhouse
	devise gem
	j-query gem
	faker gems for tables seeding
	chartkick for bar chart on backoffice page


INITIALIZATION & OPERATION
bundle install for gems
ruby-v: verifies installed version of Ruby
rails-v: verifies installed version of Rails
rails s :ubuntu command to run the website on localhost, ctrl+C to stop
To acess the website:
go to rocketelevatorsss.com
sign-up (with email and password)
login (with email and password)
backoffice page: only accessible to employees
Contact us and Quote Request forms: can be filled by anyone who is not a registered user
Data Tables set up using mySQL:
1- Employees
2- Users
3- Quote Requests
4- Adresses
5- Battery
6- Building
7- Building details
8- Column
9- Customer
10- Elevator
11- Leads
Data Wearhouse Tables using PostgreSQL
1- FactQuote
2- FactConatct
3- FactElevator
4- DimCustomer


QUERIES for client:
1- Contact Requests made/month:
SELECTto_char(creation_at, 'YYYY-MM') as "Month", count(id) as ContactPerMonth FROM public.FactContact group by "Month" group by "Month desc;
2- Bid solicitations made/month:
SELECTto_char(creation_date, 'YYYY-MM') as "Month", count(quote_id) as QuotePerMonth FROM public.FactQuotes group by "Month" group by "Month" desc;
3- Number of Elevators per Customers:
SELECT customer_id as "Customer", count(id) as ElevPerCustomers FROM public.FactElevator group by "Customer";


TEAM MEMBERS
Aditya Menon Sreeraj
Gianluca Ciccone
Glory Jacques
Stefan Voicu
Yasmina Suwed