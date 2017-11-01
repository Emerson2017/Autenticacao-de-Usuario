class MuralAtividadesController < ApplicationController
  before_action :set_mural_atividade, only: [:show, :edit, :update, :destroy]

  # GET /mural_atividades
  # GET /mural_atividades.json
  def index
    @mural_atividades = MuralAtividade.all
  end

  # GET /mural_atividades/1
  # GET /mural_atividades/1.json
  def show
  end

  # GET /mural_atividades/new
  def new
    @mural_atividade = MuralAtividade.new
  end

  # GET /mural_atividades/1/edit
  def edit
  end

  # POST /mural_atividades
  # POST /mural_atividades.json
  def create
    @user = current_user
    @mural_atividade = @user.mural_atividades.build(mural_atividade_params)


    respond_to do |format|
      if @mural_atividade.save
        format.html { redirect_to @mural_atividade, notice: 'Atividade Postada com Sucesso!' }
        format.json { render :show, status: :created, location: @mural_atividade }
      else
        format.html { render :new }
        format.json { render json: @mural_atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mural_atividades/1
  # PATCH/PUT /mural_atividades/1.json
  def update
    respond_to do |format|
      if @mural_atividade.update(mural_atividade_params)
        format.html { redirect_to @mural_atividade, notice: 'Atividade Atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @mural_atividade }
      else
        format.html { render :edit }
        format.json { render json: @mural_atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mural_atividades/1
  # DELETE /mural_atividades/1.json
  def destroy
    @mural_atividade.destroy
    respond_to do |format|
      format.html { redirect_to mural_atividades_url, notice: 'Atividade excluída com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mural_atividade
      @mural_atividade = MuralAtividade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mural_atividade_params
      params.require(:mural_atividade).permit(:atividade)
    end
end
