require 'rails_helper'

RSpec.describe Person, type: :model do
  
  
  
  context "Person name" do 
    let(:person) {create(:person)}
    
    it "has title" do 
      expect(person.title).to eq("Eng")  
    end

    it "has first" do 
      expect(person.first).to eq("Vicente")
    end

    it "has last" do
      expect(person.last).to eq("Simão") 
    end

    it "has gener" do
      expect(person.gender).to eq("Male")
    end 

    it "has email" do 
      expect(person.email).to eq("vicenteviii@gmail.com")
    end 
  end

  context "Person attach" do 
    let(:person) {create(:person)}

    it "has photo" do  
      expect(person.photo.attached?).to eq(true)
    end

  end

  
end
