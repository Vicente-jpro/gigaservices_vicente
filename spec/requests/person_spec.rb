require 'rails_helper'

RSpec.describe "People", type: :request do
  
  describe "GET /index" do
    
    it "should success and render to index page" do
      get "/people" 
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index) 
    end   

    it "should have an empty array" do 
      get "/people"
      expect(assigns(:people)).to be_empty
    end

    it "should have a people array" do 
      create(:person)
      get "/people"
      expect(assigns(:people)).to_not be_empty
    end
  
  end

  context "GET /Show" do 
        
    let(:person) { create(:person)}

    it "should success and render to show page" do
        get "/people/1", params: { id: person.id }
        expect(response).to have_http_status(200)
        expect(response).to render_template(:show)
    end

    it "show where id" do 
        get "/people/1", params: { id: person.id}
        expect(assigns(:person)).to eq(person)
    end

  end

  context "GET #new" do 
    let(:person) {create(:person)}
    it "should success and render to new page" do 
      get "/people/new" 
      expect(response).to have_http_status(200)
      expect(response).to render_template(:new)  
    end

    it "should new post" do 
      get "/people/new"
      expect(assigns(:person)).to be_a(Person) 
    end
  end

  # context "GET #edit" do 
  #   let(:person) { create(:person) }
  #   it "should success and render to edit page" do 
  #     get "/people/1/edit", params: {id: person.id}
  #     expect(response).to have_http_status(200) 
  #     expect(response).to render_template(:edit)
  #   end
  # end

  context "CREATE #create" do 

    let(:person) {create(:person)}

  #  it "should create a new person" do 
  #    set_person = { 
  #      title: "Engff", 
  #      first: "Vicentee",
  #      last: "Simaoo",
  #      gender: "Malee",
  #      email: "vicenteviciii@gmail.com",
  #      photo:  File.open(Rails.root.join('spec', 'factories', 'images', 'pacaça.jpeg'), 
  #      filename: 'pacaça.jpeg', 
  #      content_type: 'image/jpeg')
  #     }
  #     post "/people", params: { person: set_person  }
  #     expect(flash[:notice]).to eq("Property was successfully created.")
  #   end

  #  it "not create a new person" do 
  #    set_person = { 
  #             title: "", 
  #              first: "",
  #              last: "",
  #              gender: "",
  #              email: "vicenteviciii@gmail.com",
  #              photo:  File.open(Rails.root.join('spec', 'factories', 'images', 'pacaça.jpeg'), 
  #              filename: 'pacaça.jpeg', 
  #              content_type: 'image/jpeg')
  #       }
  #     post "/people", params: {person: set_person}
  #     expect(response).to render_template(:new)
  #    end

  end

  
end