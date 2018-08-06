require_relative 'config/environment'

class App < Sinatra::Base

  get "/goodbye/:name" do
    @bye_user = params[:name]
    "Goodbye, #{@bye_user}."
  end

  get "/multiply/:num1/:num2" do
     @product = params[:num1].to_i * params[:num2].to_i
     #set value to instance variable using @
      "#{@product}"
        #return the instance varible
  end



  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

end
