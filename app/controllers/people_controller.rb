class PeopleController < ApplicationController
  # before_action :set_person, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @people = Person.all
  end

  def show
  end

  def new
    @person = Person.new
  end

  def edit
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @person }
      else
        format.html { render action: 'new' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end

  def actions
    action = params[:commit]
    if action == "Become member"
      @people = Person.find(params[:person_ids])
      @people.each {|i| i.role = "member"; i.save} 
    elsif action == "Become probationer"
      @people = Person.find(params[:person_ids])
      @people.each {|i| i.role = "probationer"; i.save} 
    elsif action == "Become volontier"
      @people = Person.find(params[:person_ids])
      @people.each {|i| i.role = "volontier"; i.save} 
    end
  
    render 'index'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name, :email, :city, :phone_number, :role, :status, :description,
        :date_become_member, :date_left_membership, :last_invited_action, :birthday, :group_ids => [])
    end
end
