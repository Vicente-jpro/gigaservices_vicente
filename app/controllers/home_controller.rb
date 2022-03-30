class HomeController < ApplicationController
  before_action :set_person_service
  def index
    @person = @person_service.general
  end

  def set_person_service 
    @person_service = PersonService.new
  end
end
