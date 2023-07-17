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
