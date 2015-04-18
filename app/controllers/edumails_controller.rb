class EdumailsController < ApplicationController
  before_action :find_edumail, only: [:show,:update,:edit,:destroy]
  before_filter :authenticate_user!

  def index
    @edumails=Edumail.all
    @edumail=Edumail.where(email: current_user.email).order('updated_at DESC').first
  end

  def new
    @edumail=Edumail.new
  end

  def create

    @edumail=Edumail.new(edumail_params)
    @edumail.status="Pending"
    @edumail.user_id=current_user.id
    @edumail.email= current_user.email
    @edumail.edu_mail="To be approved"
    @edumail.edu_password="To be approved"
    if @edumail.save
      flash[:notice] = "Your request was seccessfully created, We will inform you to your email address"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show

  end

  def update
    
    if @edumail.update(edumail_params)
      Edumailer.approve_email(@edumail).deliver
      redirect_to root_path
    else
      render "edit"
    end

  end

  def edit

  end

  def destroy
    @edumail.destroy
    redirect_to root_path
  end

  private

  def edumail_params
    params.require(:edumail).permit(:edu_mail,:edu_password,:status,:nr_albumu,:imie,:nazwisko,:rok_nauczenia,:faculty)
  end

  def find_edumail
    @edumail = Edumail.find(params[:id])
  end
end
