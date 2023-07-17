class HomeController < ApplicationController
  def index
    @user=current_user
    @fan=[@user.artist0, @user.artist1, @user.artist2, @user.artist3, @user.artist4]
    @image=[@user.image0, @user.image1, @user.image2, @user.image3, @user.image4]

    if @fan.all?(&:nil?)
      @user.update(status: "Listener")
      @user.update(is_artist: false)
    else
      @user.update(status: "Fan")
    end
  end
end
