class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[edit update destroy new]

  # GET /books or /books.json
  def index
    @books = Book.all
    @books_sorted = @books.sort_by {|book| book.title}
  end

  # GET /books/1 or /books/1.json
  def show
    @copies = @book.copies
    @reviews = @book.reviews

    @count_available = 0

    (0..(@copies.size-1)).each do |i|
      if @copies[i] == nil || @copies[i].borrower.length == 0
        @count_available +=1
      end
    end

    if @count_available == 0
      @count_available = "no"
    end
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to book_url(@book), notice: "Book was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to book_url(@book), notice: "Book was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
    end
  end

  def copy_edit
    @book = Book.find(params[:id])
    @copies = @book.copies
  end

  def search
  end

  def search_result
    @search_title = params[:title]
    @search_author = params[:author]
    results_title = Book.where("lower(title) LIKE ?", "%#{@search_title.downcase}%")
    results_author = Book.where("lower(author) LIKE ?", "%#{@search_author.downcase}%")
    @results = results_title & results_author
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.fetch(:book, {}).permit(:title, :author, :isbn)
    end
end
