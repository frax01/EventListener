class HomeController < ApplicationController
  def index
    @user=current_user
    @user.status="Artista"
    @fan=["stringa1", "stringa2", "stringa3", "stringa4", "stringa5", "stringa6", "stringa7"]
  end
end
