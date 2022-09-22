class CopiesController < ApplicationController
  before_action :get_book
  before_action :set_copy, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[edit update destroy new]

  # GET /copies or /copies.json
  def index
    @copies = @book.copies
  end

  # GET /copies/1 or /copies/1.json
  def show
  end

  # GET /copies/new
  def new
    @copy = @book.copies.build
  end

  # GET /copies/1/edit
  def edit
  end

  # POST /copies or /copies.json
  def create
    @copy = @book.copies.build(copy_params)

    respond_to do |format|
      if @copy.save
        format.html { redirect_to book_copies_path(@book), notice: "Copy was successfully created." }
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
        format.html { redirect_to book_copy_path(@book), notice: "Copy was successfully updated." }
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
      format.html { redirect_to book_copy_path(@book), notice: "Copy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def get_book
    @book = Book.find(params[:book_id])
    puts @book.title
  end

    def set_copy
      @copy = @book.copies.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def copy_params
      params.fetch(:copy, {}).permit(:borrower, :due_date, :book_id)
    end
end
