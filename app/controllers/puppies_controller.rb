class PuppiesController < ApplicationController
    
    get '/puppies' do
        @puppies = Puppy.all
        erb :index
    end
    
    get '/puppies/new' do
        erb :new
    end
    
    post '/puppies' do
        puppy = Puppy.create(params)
        redirect "/puppies"
    end
    
    get '/puppies/:id' do 
        @puppy = Puppy.find(params[:id]) 
        erb :show
    end
    
    patch '/puppies/:id' do
        puppy = Puppy.find(params[:id])
        puppy.update(name: params[:name], breed: params[:breed])
        redirect "/puppies"
    end
    
    delete '/puppies/:id' do
        puppy = Puppy.find(params[:id])
        puppy.destroy
        redirect "/puppies"
    end
    
end
