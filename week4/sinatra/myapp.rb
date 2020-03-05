require 'sinatra'

get '/' do
   erb :index
end
get '/sum' do
    erb :sum
end

get "/calculation_results" do
    @first_number =params[:first_number].strip
    @second_number =params[:second_number].strip
    @empty_error = nil
    @invalid_values = nil
  
    # if @first_number == nil or @second_number == nil 
      @empty_error = "Kindly enter value "
    # end
  
    # if regular_expression == (@first_number) and  regular_expression == @second_number
    @invalid_values = "Kindly Enter Numeric Values Only"
    # else
    @sum = @first_number + @second_number
    # end  
    @regular_expression = /^[+-]?((\d+(\.\d*)?)|(\.\d+))$/
    File.open("results.txt", "a+") do |file|
      file.puts(@sum)
    end
    erb :results
  
  end
  
get '/all_results' do
    def all_results
    return [] unless File.exist?("results.txt")
    File.read("results.txt").split("\n")
    end
    @all_results= all_results
    erb :all_results
end
get '/:name' do
    @name = params["name"].split("")
    erb :myname_character
    
end
get '/:name/signup' do
    "I am trying to sign in "
end 

get '/:name/signup/:age' do
    age = params["age"]
    @age = age.to_i

  erb :signup
end

get '/:name/signup/:age/people_details' do
  @people_details = {
        "name" => ["Alice", "Michael", "Jane", "Clare", "Mary", "John"],
        "age" => [20, 23, 43, 32, 23, 44],
        "country" => ["Kenya", "Tanzania", "Ghana", "Uganda", "Ethiopia", "Egypt"]
    }
    erb :people_details
end
