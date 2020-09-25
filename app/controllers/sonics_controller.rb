class SonicsController < ApplicationController
  before_action :set_sonic, only: [:show, :edit, :update, :destroy]
  def index
    @sonics = Sonic.all
  end

  def new
    @sonic = Sonic.new
  end

  def confirm
    @sonic = Sonic.new(sonic_params)
    render :new if @sonic.invalid?
  end

  def create
    @sonic = Sonic.create(sonic_params)
    if params[:back]
      render :new
    else
      if @sonic.save
        redirect_to sonics_path, notice: "We have received your sonic！"
      else
        render :new
      end
    end
  end

  def show
    #@sonic = Sonic.find(params[:id])
  end

  def edit
    #@sonic = Sonic.find(params[:id])
  end

  def update
    #@sonic = Sonic.find(params[:id])
    if @sonic.update(sonic_params)
      redirect_to sonics_path, notice: "Edited sonic！"
    else
      render :edit
    end
  end

  def destroy
    @sonic.destroy
    redirect_to sonics_path, notice:"Deleted sonic！"
  end

  private

  def sonic_params
    params.require(:sonic).permit(:content)
  end

  def set_sonic
    @sonic = Sonic.find(params[:id])
  end
end
