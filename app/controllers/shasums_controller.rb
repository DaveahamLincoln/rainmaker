class ShasumsController < ApplicationController
  before_action :set_shasum, only: [:show, :edit, :update, :destroy]

  # GET /shasums
  # GET /shasums.json
  def index
    @shasums = Shasum.all
  end

  # GET /shasums/1
  # GET /shasums/1.json
  def show
  end

=begin
  # GET /shasums/new
  def new
    @shasum = Shasum.new
  end

  # GET /shasums/1/edit
  def edit
  end

  # POST /shasums
  # POST /shasums.json
  def create
    @shasum = Shasum.new(shasum_params)

    respond_to do |format|
      if @shasum.save
        format.html { redirect_to @shasum, notice: 'Shasum was successfully created.' }
        format.json { render :show, status: :created, location: @shasum }
      else
        format.html { render :new }
        format.json { render json: @shasum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shasums/1
  # PATCH/PUT /shasums/1.json
  def update
    respond_to do |format|
      if @shasum.update(shasum_params)
        format.html { redirect_to @shasum, notice: 'Shasum was successfully updated.' }
        format.json { render :show, status: :ok, location: @shasum }
      else
        format.html { render :edit }
        format.json { render json: @shasum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shasums/1
  # DELETE /shasums/1.json
  def destroy
    @shasum.destroy
    respond_to do |format|
      format.html { redirect_to shasums_url, notice: 'Shasum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
=end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shasum
      @shasum = Shasum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shasum_params
      params.require(:shasum).permit(:sum)
    end
end
