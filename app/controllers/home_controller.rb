class HomeController < ApplicationController
  #Person service 
  include PersonServiceConcern
  before_action :get_person_data_from_api_service
    
  def index
    @person_service = get_person_data_from_api_service.general
  end

  
  
end
