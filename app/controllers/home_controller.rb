class HomeController < ApplicationController
  def index
    @user=current_user
    @fan=[@user.artist0,@user.artist1,@user.artist2,@user.artist3,@user.artist4,]
  end
end
