class CountriesController < ApplicationController
  def index
    @countries = Country.order(:name)

    if params[:q]
      @countries = @countries.where("name LIKE '%#{params[:q]}%'")
    end

    if request.xhr?
      render partial: "list", locals: { countries: @countries }, status: 200
    end
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)

    if @country.save
      redirect_to countries_path
    end
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])

    if @country.update_attributes(country_params)
      redirect_to countries_path
    end
  end

  def destroy
    @country = Country.find(params[:id])

    if @country.destroy
      redirect_to countries_path
    end
  end

  def show
    @country = Country.find(params[:id])
  end

  private

  def country_params
    params.require(:country).permit(:name, :federation_name, :ranking)
  end
end

