class ReviewsController < ApplicationController
  before_action :get_book
  before_action :set_review, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[edit update destroy new]

  # GET /reviews or /reviews.json
  def index
    @reviews = @book.reviews
  end

  # GET /reviews/1 or /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = @book.reviews.build
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews or /reviews.json
  def create
    @review = @book.reviews.build(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to book_reviews_path(@book), notice: "review was successfully created." }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to book_review_path(@book), notice: "review was successfully updated." }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @review.destroy

    respond_to do |format|
      format.html { redirect_to book_review_path(@book), notice: "review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def get_book
    @book = Book.find(params[:book_id])
    puts @book.title
  end

  def set_review
    @review = @book.reviews.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def review_params
    params.fetch(:review, {}).permit(:borrower, :due_date, :book_id)
  end
end
