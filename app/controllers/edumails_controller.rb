class EdumailsController < ApplicationController
  before_action :find_edumail, only: [:show,:update,:edit,:destroy]

  def index
    @edumails=Edumail.all
  end

  def new
    @edumail=Edumail.new
  end

  def create
    @edumail=current_user.edumails.build(edumails_params)

    if @edumail.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show

  end

  def update

  end

  def edit

  end

  def destroy

  end

  private

  def edumails_params
    params.require(:id).permit()
  end

  def find_edumail
    @edumail = Edumail.find(params[:id])
  end
end
