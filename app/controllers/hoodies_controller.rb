class HoodiesController < ApplicationController
  before_action :set_hoody, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show ]
  # GET /hoodies
  # GET /hoodies.json
  def index
    @hoodies = Hoody.all.order("created_at desc")
  end

  # GET /hoodies/1
  # GET /hoodies/1.json
  def show
  end

  # GET /hoodies/new
  def new
    @hoody = current_user.hoodies.build
  end

  # GET /hoodies/1/edit
  def edit
  end

  # POST /hoodies
  # POST /hoodies.json
  def create
    @hoody = current_user.hoodies.build(hoody_params)

    respond_to do |format|
      if @hoody.save
        format.html { redirect_to @hoody, notice: 'Hoody was successfully created.' }
        format.json { render :show, status: :created, location: @hoody }
      else
        format.html { render :new }
        format.json { render json: @hoody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoodies/1
  # PATCH/PUT /hoodies/1.json
  def update
    respond_to do |format|
      if @hoody.update(hoody_params)
        format.html { redirect_to @hoody, notice: 'Hoody was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoody }
      else
        format.html { render :edit }
        format.json { render json: @hoody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoodies/1
  # DELETE /hoodies/1.json
  def destroy
    @hoody.destroy
    respond_to do |format|
      format.html { redirect_to hoodies_url, notice: 'Hoody was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoody
      @hoody = Hoody.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hoody_params
      params.require(:hoody).permit(:brand, :description, :size, :title, :price, :image)
    end
end
