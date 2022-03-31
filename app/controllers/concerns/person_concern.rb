module PersonConcern
    extend ActiveSupport::Concern
    
    private
        def get_property(person, person_name)
          { 
            id: property.id,  
            name: person_name[:name] 
            title: person_name[:title] 
            first: person_name[:first] 
            last: person_name[:last] 
            gender: person_name[:gender] 
            email: person_name[:email] 
          } 
        end
end