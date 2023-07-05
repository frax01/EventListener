class HomepageController < ApplicationController
  before_action :authenticate_user!

  def index
    #@user_name = current_user.nome
    #puts "Il nome utente è: #{@user_name}"
    #@ultimo_raduno = Raduno.last
    #puts "l'ultimo raduno è: #{@ultimo_raduno.idr}"
  end
end
