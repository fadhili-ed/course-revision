require 'sinatra'

get '/' do
   erb :index
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
__END__

@@layout
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
<%=yield%>
</body>
</html>
