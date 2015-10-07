class CompaniesController < ApplicationController
  before_action :authenticate_company!
  def show
    @company = current_company
  end

  def edit
    @company = current_company
  end

  def update
    @company = current_company.update(company_params)
    redirect_to root_path
  end

  private
  def company_params
    params.require(:company).permit(:name, :street_name, :house_number, :city, :zipcode, :country)
  end
end
