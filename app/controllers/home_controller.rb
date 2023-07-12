class HomeController < ApplicationController
  def index
	@user = current_user
	puts "sono nell'Userspace Home Controller"
	puts "u #{@user}"
	puts "u.n #{@user.nome}"
	puts "c_u #{current_user}"
	puts "c_u.n #{current_user["nome"]}"
	puts ""
  end
end
