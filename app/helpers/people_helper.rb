module PeopleHelper

    def image_person(person) 
      person['results'][0]['picture']['large']
    end
    def name_title(person) 
      person['results'][0]['name']['title']
    end

    def name_first(person) 
      person['results'][0]['name']['first']
    end

    def name_last(person)  
      person['results'][0]['name']['last']
    end
     
    def gender(person) 
      person['results'][0]['gender'] 
    end

    def email(person) 
      person['results'][0]['email']
    end
      
end
