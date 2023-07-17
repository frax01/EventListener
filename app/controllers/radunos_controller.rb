class RadunosController < ApplicationController
  before_action :set_raduno, only: %i[ show edit update destroy ]

  # GET /radunos or /radunos.json
  def index
    @radunos = Raduno.all
  end

  # GET /radunos/1 or /radunos/1.json
  def show
  end

  # GET /radunos/new
  def new
    @raduno = Raduno.new
    #check_date_in_future
  end

  #private

  #def check_date_in_future
  #  today = Date.today
  #  if @raduno.data.present? && @raduno.data < today
  #    @raduno.errors.add(:data, "non può essere nel passato.")
  #  end
  #end

  # GET /radunos/1/edit
  def edit
  end

  # POST /radunos or /radunos.json
  def create
    @raduno=Raduno.new(raduno_params)
    @raduno.user = current_user
    @raduno.email=current_user.email

    respond_to do |format|
      if data_in_future?(@raduno.data)
        if @raduno.save
          format.html { redirect_to '/home#index', notice: "Raduno was successfully created." }
          format.json { render :show, status: :created, location: @raduno }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @raduno.errors, status: :unprocessable_entity }
        end
      else
        @raduno.errors.add(:data, "- inserisci una data valida")
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @raduno.errors, status: :unprocessable_entity }
      end
    end
  end

  def data_in_future?(date)
    return date.present? && date > Date.today
  end

  # PATCH/PUT /radunos/1 or /radunos/1.json
  def update
    respond_to do |format|
      if @raduno.update(raduno_params)
        # invoke mailer for each event subscribe
        puts "--- attributi Raduno: #{@raduno.attributes.keys}---"
        if Event.count > 0
          puts "--- attributi Event: #{Event.first.attributes.keys}---"
          Event.all.each do |e|
            # puts "--- attributi Event: #{e.attributes.values} --- #{@raduno.attributes.values} ---" # raduno.id == id.raduno
            if e.id_raduno == @raduno.id
              user = User.find(e.user_id)
              EventMailer.update(user,@raduno).deliver_later
              puts "---#{e.email_partecipante}---"
            end
          end
        end
        format.html { redirect_to '/home#index', notice: "Raduno was successfully updated." }
        format.json { render :show, status: :ok, location: @raduno }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @raduno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radunos/1 or /radunos/1.json
  def destroy
    Event.all.each do |e|
      if e.raduno_id == @raduno.id  #event linked to raduno to destroy
        @user = User.find(e.user_id)
        EventMailer.deletion(@user, @raduno).deliver_now
        e.destroy #calling a destroy on unrequired object
      end
    end
    @raduno.destroy

    respond_to do |format|
      format.html { redirect_to radunos_url, notice: "Raduno was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raduno
      @raduno = Raduno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raduno_params
      params.require(:raduno).permit(:idr, :nome_darte_organizzatore, :descrizione, :data, :orario, :luogo)
    end
end
