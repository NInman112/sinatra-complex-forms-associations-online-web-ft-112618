class PetsController < ApplicationController

  get '/pets' do
    @pets = Pet.all
    erb :'/pets/index'
  end

  get '/pets/new' do
    erb :'/pets/new'
  end

  post '/pets' do
    @pet = Pet.create(params[:pet])
    if !params["owner"]["name"].empty?
<<<<<<< HEAD
      @pet.owner = Owner.create(name: params["owner"]["name"])
    end
    @pet.save
=======
      @pet.owner << Owner.create(name: params["owner"]["name"])
    end
>>>>>>> e9e9dc8f537d0761065c466f2df3b06d085d2e96
    redirect to "pets/#{@pet.id}"
  end

  get '/pets/:id' do
    @pet = Pet.find(params[:id])
    erb :'/pets/show'
  end

<<<<<<< HEAD
  get '/pets/:id/edit' do
    @pet = Pet.find(params[:id])
    erb :'/pets/edit'
  end
=======
  patch '/pets/:id' do
>>>>>>> e9e9dc8f537d0761065c466f2df3b06d085d2e96

  patch '/pets/:id' do
    @pet = Pet.find(params[:id])
    @pet.update(params["pet"])
    if !params["owner"]["name"].empty?
      @pet.owner = Owner.create(name: params["owner"]["name"])
    end
    @pet.save
    redirect to "pets/#{@pet.id}"
  end
end
