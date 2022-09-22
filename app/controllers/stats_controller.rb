class StatsController < ApplicationController
  def index
    all_books = Book.all
    @num_books = all_books.length
    all_copies = Copy.all
    @num_copies = all_copies.length
  end
end