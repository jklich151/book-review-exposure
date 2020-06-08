class SearchFacade

  def book_results(title)
    json = BookService.new.get_books(title)
    json[:docs]
  end

  def review_results(title)
    TimesService.new.all_reviews(title)
  end

  def all_results(title)
    Book.new(book_results(title), review_results(title))
  end
end
