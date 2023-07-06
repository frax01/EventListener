class HomepageController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_name = current_user.nome
    
    #@ultimo_raduno = Raduno.last
    #puts "l'ultimo raduno è: #{@ultimo_raduno.idr}"

    #users = User.all
    #users.each do |user|
    #  puts "Nome: #{user.nome}"
    #  puts "Cognome: #{user.cognome}"
    #  puts "Email: #{user.email}"
    #  puts "Data di nascita: #{user.data_di_nascita}"
    #  puts "----------------------"

    #end

  end
end
