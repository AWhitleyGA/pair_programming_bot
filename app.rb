require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get '/' do
  @prompt = "Do you have a test?"
  @button1 = "yes"
  @button2 = "no"
  @dest1 = "/pass"
  @dest2 = "/write_test"
  erb :index
end

get '/pass' do
  @prompt = "Does the test pass?"
  @button1 = "yes"
  @button2 = "no"
  @dest1 = "/refactor"
  @dest2 = "/write_more_code"
  erb :index
end

get '/write_test' do
  @prompt = "Write a test"
  @button1 = "done"
  @dest1 = "/pass"
  erb :index
end

get '/write_more_code' do
  @prompt = "Write enough code to make the test pass"
  @button1 = "done"
  @dest1 = "/pass"
  erb :index
end

get '/refactor' do
  @prompt = "Do you need to refactor?"
  @button1 = "yes"
  @button2 = "no"
  @dest1 = "/refactor_code"
  @dest2 = "/select_new_feature"
  erb :index
end

get '/refactor_code' do
  @prompt = "Refactor your code"
  @button1 = "done"
  @dest1 = "/pass"
  erb :index
end

get '/select_new_feature' do
  @prompt = "Select New Feature"
  @button1 = "done"
  @dest1 = "/"
  erb :index
end
