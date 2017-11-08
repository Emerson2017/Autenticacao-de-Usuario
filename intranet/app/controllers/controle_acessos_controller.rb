class ControleAcessosController < ApplicationController
  before_action :set_controle_acesso, only: [:show, :edit, :update, :destroy]

  # GET /controle_acessos
  # GET /controle_acessos.json
  def index
    @controle_acessos = ControleAcesso.all
    @users = User.all

  end

  # GET /controle_acessos/1
  # GET /controle_acessos/1.json
  def show
  end

  # GET /controle_acessos/new
  def new
    @controle_acesso = ControleAcesso.new
  end

  # GET /controle_acessos/1/edit
  def edit
  end

  # POST /controle_acessos
  # POST /controle_acessos.json
  def create
    @controle_acesso = ControleAcesso.new(controle_acesso_params)

    respond_to do |format|
      if @controle_acesso.save
        format.html { redirect_to @controle_acesso, notice: 'Controle acesso was successfully created.' }
        format.json { render :show, status: :created, location: @controle_acesso }
      else
        format.html { render :new }
        format.json { render json: @controle_acesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controle_acessos/1
  # PATCH/PUT /controle_acessos/1.json
  def update
    respond_to do |format|
      if @controle_acesso.update(controle_acesso_params)
        format.html { redirect_to @controle_acesso, notice: 'Controle acesso was successfully updated.' }
        format.json { render :show, status: :ok, location: @controle_acesso }
      else
        format.html { render :edit }
        format.json { render json: @controle_acesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controle_acessos/1
  # DELETE /controle_acessos/1.json
  def destroy
    @controle_acesso.destroy
    respond_to do |format|
      format.html { redirect_to controle_acessos_url, notice: 'Controle acesso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_controle_acesso
      @controle_acesso = ControleAcesso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def controle_acesso_params
      params.fetch(:controle_acesso, {})
    end
end
