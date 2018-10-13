class HoodiesController < ApplicationController
  before_action :set_hoody, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show ]

  def index
    @hoodies = Hoody.all.order("created_at desc")
  end

  def show
  end

  def new
    @hoody = current_user.hoodies.build
  end

  def edit
  end

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

  def destroy
    @hoody.destroy
    respond_to do |format|
      format.html { redirect_to hoodies_url, notice: 'Hoody was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_hoody
      @hoody = Hoody.find(params[:id])
    end

    def hoody_params
      params.require(:hoody).permit(:brand, :description, :size, :title, :price, :image)
    end
end
