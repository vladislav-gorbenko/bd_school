class PeopleController < ApplicationController  
  before_filter :authenticate_user!
  before_action :set_person, only: [:show, :edit, :update, :destroy]

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
    if params.has_key?("status")
      actions_status
    elsif  params.has_key?("list_for")
      actions_list_for
    elsif  params.has_key?("add_to")
      actions_add_to
    elsif  params.has_key?("become")
      actions_become
    elsif  params.has_key?("options")
      actions_options
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def actions_status
      flash[:error] = "This method is absent"
      redirect_to action: 'index'
    end

    def actions_list_for
      flash[:error] = "This method is absent"
      redirect_to action: 'index'
    end

    def actions_add_to
      flash[:error] = "This method is absent"
      redirect_to action: 'index'
    end

    def actions_become
      action = params["become"]
      if action == "become member"
        @people = Person.find(params[:person_ids])
        @people.each {|i| i.role = "member"; i.save} 
      elsif action == "become probationer"
        @people = Person.find(params[:person_ids])
        @people.each {|i| i.role = "probationer"; i.save} 
      elsif action == "become volontier"
        @people = Person.find(params[:person_ids])
        @people.each {|i| i.role = "volontier"; i.save} 
      end
      redirect_to action: 'index'
    end

    def actions_options
      flash[:error] = "This method is absent"
      redirect_to action: 'index'
    end

    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name, :email, :city, :phone_number, :role, :status, :description,
        :date_become_member, :date_left_membership, :last_invited_action, :birthday, :group_ids => [])
    end
end
