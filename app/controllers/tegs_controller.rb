class TegsController < ApplicationController

  def index
    @tegs = Teg.all
  end

  def show
  end

  def new
    @teg = Teg.new
  end

  def edit
  end

  def create
    @teg = Teg.new(product_params)

    respond_to do |format|
      if @teg.save
        format.html { redirect_to @teg, notice: 'Teg was successfully created.' }
        format.json { render action: 'show', status: :created, location: @teg }
      else
        format.html { render action: 'new' }
        format.json { render json: @teg.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @teg.update(product_params)
        format.html { redirect_to @teg, notice: 'Teg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @teg.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @teg.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
