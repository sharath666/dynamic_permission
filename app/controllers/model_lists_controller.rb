class ModelListsController < ApplicationController
  before_action :set_model_list, only: [:show, :edit, :update, :destroy]
load_and_authorize_resource
  # GET /model_lists
  # GET /model_lists.json
  def index
    @model_lists = ModelList.all
  end

  # GET /model_lists/1
  # GET /model_lists/1.json
  def show
  end

  # GET /model_lists/new
  def new
    @model_list = ModelList.new
  end

  # GET /model_lists/1/edit
  def edit
  end

  # POST /model_lists
  # POST /model_lists.json
  def create
    @model_list = ModelList.new(model_list_params)

    respond_to do |format|
      if @model_list.save
        format.html { redirect_to @model_list, notice: 'Model list was successfully created.' }
        format.json { render :show, status: :created, location: @model_list }
      else
        format.html { render :new }
        format.json { render json: @model_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_lists/1
  # PATCH/PUT /model_lists/1.json
  def update
    respond_to do |format|
      if @model_list.update(model_list_params)
        format.html { redirect_to @model_list, notice: 'Model list was successfully updated.' }
        format.json { render :show, status: :ok, location: @model_list }
      else
        format.html { render :edit }
        format.json { render json: @model_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_lists/1
  # DELETE /model_lists/1.json
  def destroy
    @model_list.destroy
    respond_to do |format|
      format.html { redirect_to model_lists_url, notice: 'Model list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_list
      @model_list = ModelList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_list_params
      params.require(:model_list).permit(:name)
    end
end
