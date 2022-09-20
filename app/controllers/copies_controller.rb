class CopiesController < ApplicationController
  before_action :set_copy, only: %i[ show edit update destroy ]

  # GET /copies or /copies.json
  def index
    @copies = Copy.all
  end

  # GET /copies/1 or /copies/1.json
  def show
  end

  # GET /copies/new
  def new
    @copy = Copy.new
  end

  # GET /copies/1/edit
  def edit
  end

  # POST /copies or /copies.json
  def create
    @copy = Copy.new(copy_params)

    respond_to do |format|
      if @copy.save
        format.html { redirect_to copy_url(@copy), notice: "Copy was successfully created." }
        format.json { render :show, status: :created, location: @copy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copies/1 or /copies/1.json
  def update
    respond_to do |format|
      if @copy.update(copy_params)
        format.html { redirect_to copy_url(@copy), notice: "Copy was successfully updated." }
        format.json { render :show, status: :ok, location: @copy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copies/1 or /copies/1.json
  def destroy
    @copy.destroy

    respond_to do |format|
      format.html { redirect_to copies_url, notice: "Copy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copy
      @copy = Copy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def copy_params
      params.fetch(:copy, {}).permit(:borrower, :due_date)
    end
end
