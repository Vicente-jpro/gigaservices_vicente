class HomeController < ApplicationController
  #Person service 
  include PersonServiceConcern
  before_action :set_person_service
    
  def index
    @person_service = @person_service_data.general
  end
  
end
