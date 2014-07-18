class InvitesController < ApplicationController

  def index
    @invites = Invite.all
  end

  def show
  end

  def new
    @invite = Invite.new
  end

  def edit
  end

  def create
    @invite = Invite.new(product_params)

    respond_to do |format|
      if @invite.save
        format.html { redirect_to @invite, notice: 'Invite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @invite }
      else
        format.html { render action: 'new' }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @invite.update(product_params)
        format.html { redirect_to @invite, notice: 'Invite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @invite.destroy
    respond_to do |format|
      format.html { redirect_to invites_url }
      format.json { head :no_content }
    end
  end
end
