class MemorizationpartsController < ApplicationController
  before_action :set_memorizationpart, only: [:show, :edit, :update, :destroy]

  # GET /memorizationparts
  # GET /memorizationparts.json
  def index
    @memorizationparts = Memorizationpart.all
  end

  # GET /memorizationparts/1
  # GET /memorizationparts/1.json
  def show
  end

  # GET /memorizationparts/new
  def new
    @memorizationpart = Memorizationpart.new
  end

  # GET /memorizationparts/1/edit
  def edit
  end

  # POST /memorizationparts
  # POST /memorizationparts.json
  def create
    @memorizationpart = Memorizationpart.new(memorizationpart_params)

    respond_to do |format|
      if @memorizationpart.save
        format.html { redirect_to @memorizationpart, notice: 'Memorizationpart was successfully created.' }
        format.json { render :show, status: :created, location: @memorizationpart }
      else
        format.html { render :new }
        format.json { render json: @memorizationpart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memorizationparts/1
  # PATCH/PUT /memorizationparts/1.json
  def update
    respond_to do |format|
      if @memorizationpart.update(memorizationpart_params)
        format.html { redirect_to @memorizationpart, notice: 'Memorizationpart was successfully updated.' }
        format.json { render :show, status: :ok, location: @memorizationpart }
      else
        format.html { render :edit }
        format.json { render json: @memorizationpart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memorizationparts/1
  # DELETE /memorizationparts/1.json
  def destroy
    @memorizationpart.destroy
    respond_to do |format|
      format.html { redirect_to memorizationparts_url, notice: 'Memorizationpart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorizationpart
      @memorizationpart = Memorizationpart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memorizationpart_params
      params.require(:memorizationpart).permit(:name, :students_id)
    end
end
