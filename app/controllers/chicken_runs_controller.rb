class ChickenRunsController < ApplicationController
  before_action :set_chicken_run, only: [:show, :edit, :update, :destroy]

  # GET /chicken_runs
  # GET /chicken_runs.json
  def index
    @chicken_runs = ChickenRun.all
  end

  # GET /chicken_runs/1
  # GET /chicken_runs/1.json
  def show
  end

  # GET /chicken_runs/new
  def new
    @chicken_run = ChickenRun.new
  end

  # GET /chicken_runs/1/edit
  def edit
  end

  # POST /chicken_runs
  # POST /chicken_runs.json
  def create
    @chicken_run = ChickenRun.new(chicken_run_params)

    respond_to do |format|
      if @chicken_run.save
        format.html { redirect_to @chicken_run, notice: 'Chicken run was successfully created.' }
        format.json { render :show, status: :created, location: @chicken_run }
      else
        format.html { render :new }
        format.json { render json: @chicken_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chicken_runs/1
  # PATCH/PUT /chicken_runs/1.json
  def update
    respond_to do |format|
      if @chicken_run.update(chicken_run_params)
        format.html { redirect_to @chicken_run, notice: 'Chicken run was successfully updated.' }
        format.json { render :show, status: :ok, location: @chicken_run }
      else
        format.html { render :edit }
        format.json { render json: @chicken_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chicken_runs/1
  # DELETE /chicken_runs/1.json
  def destroy
    @chicken_run.destroy
    respond_to do |format|
      format.html { redirect_to chicken_runs_url, notice: 'Chicken run was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chicken_run
      @chicken_run = ChickenRun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chicken_run_params
      params.require(:chicken_run).permit(:date, :time)
    end
end
