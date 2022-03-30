class HomeController < ApplicationController
  
  before_action :set_person_service
    
  def index
    @person_service = @person_service_data.general
  end
  
  def set_person_service 
    @person_service_data = PersonService.new
  end
  
end
