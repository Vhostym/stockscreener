require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, 'sqlite://#{Dir.pwd}/test.db')

# Defines new class 'Stock' in database to hold these values
class Stock

	include DataMapper::Resource

	# Stock sym, name and id that automatically updates
	property :symbol, String
	property :name, String
	property :id, Serial

	# Stock income over the last five years stored in DB
	property :income2008, Integer
	property :income2009, Integer
	property :income2010, Integer
	property :income2011, Integer
	property :income2012, Integer

	# Stock balance over last five years stored in DB
	property :balance2008, Integer
	property :balance2009, Integer
	property :balance2010, Integer
	property :balance2011, Integer
	property :balance2012, Integer

end

DataMapper.auto_migrate!

# Do this stuff for the homepage
get '/' do
	
end