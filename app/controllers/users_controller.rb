class UsersController < ApplicationController
    before_action :authenticate_user!

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # Gestisci l'azione dopo la registrazione dell'utente
      redirect_to root_path, notice: 'Utente registrato con successo!'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:nome, :cognome, :data_di_nascita, :email, :password, :password_confirmation)
  end
end