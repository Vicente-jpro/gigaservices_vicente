module PersonServiceConcern
    extend ActiveSupport::Concern
   
    private
        def get_person_data_from_api_service 
          PersonService.new
        end
  
end