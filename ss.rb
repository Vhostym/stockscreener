require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, 'sqlite://#{Dir.pwd}/test.db')

class Stock

	include DataMapper::Resource

	property :symbol, String
	property :name, String

end