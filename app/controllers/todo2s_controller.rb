class Todo2sController < ApplicationController
  before_action :set_todo2, only: [:show, :edit, :update, :destroy]

  # GET /todo2s
  # GET /todo2s.json
  def index
    @todo2s = Todo2.all
  end

  # GET /todo2s/1
  # GET /todo2s/1.json
  def show
  end

  # GET /todo2s/new
  def new
    @todo2 = Todo2.new
  end

  # GET /todo2s/1/edit
  def edit
  end

  # POST /todo2s
  # POST /todo2s.json
  def create
    @todo2 = Todo2.new(todo2_params)

    respond_to do |format|
      if @todo2.save
        format.html { redirect_to @todo2, notice: 'Todo2 was successfully created.' }
        format.json { render :show, status: :created, location: @todo2 }
      else
        format.html { render :new }
        format.json { render json: @todo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo2s/1
  # PATCH/PUT /todo2s/1.json
  def update
    respond_to do |format|
      if @todo2.update(todo2_params)
        format.html { redirect_to @todo2, notice: 'Todo2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo2 }
      else
        format.html { render :edit }
        format.json { render json: @todo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo2s/1
  # DELETE /todo2s/1.json
  def destroy
    @todo2.destroy
    respond_to do |format|
      format.html { redirect_to todo2s_url, notice: 'Todo2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo2
      @todo2 = Todo2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo2_params
      params.require(:todo2).permit(:title, :content)
    end
end
