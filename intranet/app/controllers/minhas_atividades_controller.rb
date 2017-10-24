class MinhasAtividadesController < ApplicationController
  before_action :set_minhas_atividade, only: [:show, :edit, :update, :destroy]

  # GET /minhas_atividades
  # GET /minhas_atividades.json
  def index
    @minhas_atividades = MinhasAtividade.all
  end

  # GET /minhas_atividades/1
  # GET /minhas_atividades/1.json
  def show
  end

  # GET /minhas_atividades/new
  def new
    @minhas_atividade = MinhasAtividade.new
  end

  # GET /minhas_atividades/1/edit
  def edit
  end

  # POST /minhas_atividades
  # POST /minhas_atividades.json
  def create
    @minhas_atividade = MinhasAtividade.new(minhas_atividade_params)

    respond_to do |format|
      if @minhas_atividade.save
        format.html { redirect_to @minhas_atividade, notice: 'Minhas atividade was successfully created.' }
        format.json { render :show, status: :created, location: @minhas_atividade }
      else
        format.html { render :new }
        format.json { render json: @minhas_atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minhas_atividades/1
  # PATCH/PUT /minhas_atividades/1.json
  def update
    respond_to do |format|
      if @minhas_atividade.update(minhas_atividade_params)
        format.html { redirect_to @minhas_atividade, notice: 'Minhas atividade was successfully updated.' }
        format.json { render :show, status: :ok, location: @minhas_atividade }
      else
        format.html { render :edit }
        format.json { render json: @minhas_atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minhas_atividades/1
  # DELETE /minhas_atividades/1.json
  def destroy
    @minhas_atividade.destroy
    respond_to do |format|
      format.html { redirect_to minhas_atividades_url, notice: 'Minhas atividade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minhas_atividade
      @minhas_atividade = MinhasAtividade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minhas_atividade_params
      params.require(:minhas_atividade).permit(:atividade, :responsavel)
    end
end
