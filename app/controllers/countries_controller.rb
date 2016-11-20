class CountriesController < ApplicationController

  def index
    @page_title 
    @countries = Country.all 
  end 

  def new
  end 

  def create
    @country = Country.new(name: params[:name], continent: params[:continent], colors: params[:colors], description: params[:description])
    @country.save 

    flash[:success] = "Your country has been created"
    redirect_to "/countries"
  end 

  def edit 
    @country = Country.find_by(id: params[:id])
  end 

  def show
    @country = Country.find_by(id: params[:id])
  end 

  def update 
    @country = Country.find_by(id: params[:id])
    @country.assign_attributes(name: params[:name], continent: params[:continent], colors: params[:colors], description: params[:description])
    @country.save

    flash[:success] = "Your country has been edited"
    redirect_to "/countries"
  end 

  def destroy 
    @country = Country.find_by(id: params[:id])
    @country.destroy

    flash[:danger] = "Your country has been deleted"
    redirect_to "/countries"
  end

end
