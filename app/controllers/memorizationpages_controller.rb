class MemorizationpagesController < ApplicationController
  before_action :set_memorizationpage, only: [:show, :edit, :update, :destroy]

  # GET /memorizationpages
  # GET /memorizationpages.json
  def index
    @memorizationpages = Memorizationpage.all
  end

  # GET /memorizationpages/1
  # GET /memorizationpages/1.json
  def show
  end

  # GET /memorizationpages/new
  def new
    @memorizationpage = Memorizationpage.new
  end

  # GET /memorizationpages/1/edit
  def edit
  end

  # POST /memorizationpages
  # POST /memorizationpages.json
  def create
    @memorizationpage = Memorizationpage.new(memorizationpage_params)

    respond_to do |format|
      if @memorizationpage.save
        format.html { redirect_to @memorizationpage, notice: 'Memorizationpage was successfully created.' }
        format.json { render :show, status: :created, location: @memorizationpage }
      else
        format.html { render :new }
        format.json { render json: @memorizationpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memorizationpages/1
  # PATCH/PUT /memorizationpages/1.json
  def update
    respond_to do |format|
      if @memorizationpage.update(memorizationpage_params)
        format.html { redirect_to @memorizationpage, notice: 'Memorizationpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @memorizationpage }
      else
        format.html { render :edit }
        format.json { render json: @memorizationpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memorizationpages/1
  # DELETE /memorizationpages/1.json
  def destroy
    @memorizationpage.destroy
    respond_to do |format|
      format.html { redirect_to memorizationpages_url, notice: 'Memorizationpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorizationpage
      @memorizationpage = Memorizationpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memorizationpage_params
      params.require(:memorizationpage).permit(:name, :students_id)
    end
end
