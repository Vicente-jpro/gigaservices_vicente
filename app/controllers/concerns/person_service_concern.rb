module PersonServiceConcern
    extend ActiveSupport::Concern
   
    private
        def set_person_service 
        @person_service_data = PersonService.new
        end
  
end