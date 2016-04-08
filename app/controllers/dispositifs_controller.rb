class DispositifsController < ApplicationController
  before_action :set_dispositif, only: [:show, :edit, :update, :destroy]

  # GET /dispositifs
  # GET /dispositifs.json
  def index
    @dispositifs = Dispositif.all
  end

  # GET /dispositifs/1
  # GET /dispositifs/1.json
  def show
  end

  # GET /dispositifs/new
  def new
    @dispositif = Dispositif.new
  end

  # GET /dispositifs/1/edit
  def edit
  end

  # POST /dispositifs
  # POST /dispositifs.json
  def create
    @dispositif = Dispositif.new(dispositif_params)

    respond_to do |format|
      if @dispositif.save
        format.html { redirect_to @dispositif, notice: 'Dispositif was successfully created.' }
        format.json { render :show, status: :created, location: @dispositif }
      else
        format.html { render :new }
        format.json { render json: @dispositif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispositifs/1
  # PATCH/PUT /dispositifs/1.json
  def update
    respond_to do |format|
      if @dispositif.update(dispositif_params)
        format.html { redirect_to @dispositif, notice: 'Dispositif was successfully updated.' }
        format.json { render :show, status: :ok, location: @dispositif }
      else
        format.html { render :edit }
        format.json { render json: @dispositif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispositifs/1
  # DELETE /dispositifs/1.json
  def destroy
    @dispositif.destroy
    respond_to do |format|
      format.html { redirect_to dispositifs_url, notice: 'Dispositif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispositif
      @dispositif = Dispositif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dispositif_params
      params.require(:dispositif).permit(:name)
    end
end
