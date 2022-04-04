module PeopleHelper

    def image_person_url(person_service) 
      person_service['results'][0]['picture']['large']
    end

    def name_title(person_service) 
      person_service['results'][0]['name']['title']
    end

    def name_first(person_service) 
      person_service['results'][0]['name']['first']
    end

    def name_last(person_service)  
      person_service['results'][0]['name']['last']
    end
     
    def gender(person_service) 
      person_service['results'][0]['gender'] 
    end

    def email(person_service) 
      person_service['results'][0]['email']
    end
      
end
