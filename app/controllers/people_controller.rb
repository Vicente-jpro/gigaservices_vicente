class PeopleController < ApplicationController
  include PersonConcern
  include PersonServiceConcern

  before_action :get_person_data_from_api_service
  before_action :set_person, only: %i[ show edit update destroy ]
  before_action :set_person_service, only: [ :new, :edit]


  # GET /people or /people.json
  def index
    @people = Person.page(params[:page]).per(10)
  end

  # GET /people/1 or /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
    button_name("Update") 
  end

  # POST /people or /people.json
  def create

    button_name("Create") 

    @person = Person.new(person_params)
   
    respond_to do |format|
      if @person.save
        format.html { redirect_to person_url(@person), notice: "Person was successfully created." }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1 or /people/1.json
  def update

    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to person_url(@person), notice: "Person was successfully updated." }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1 or /people/1.json
  def destroy
    button_name("Delete") 
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url, notice: "Person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    @people = Person.get_some(params[:key]).page(params[:page]).per(10)
  end

  def button_name(name) 
    @button_people_name = name
    @button_people_name
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end
    def set_person_service 
      @person_service = get_person_data_from_api_service.general
    end
    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:title, :first, :last, :gender, :email, :photo)
    end

end
