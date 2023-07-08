class HomepageController < ApplicationController
  #before_action :authenticate_user!

  def index
    @user=current_user
    @fan=["stringa1", "stringa2", "stringa3", "stringa4", "stringa5", "stringa6", "stringa7"]

    #raduno = Raduno.first
    #descrizione = raduno.descrizione
    #puts descrizione
  end
end
