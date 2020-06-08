class Book
  attr_reader :title,
              :author,
              :publisher,
              :results,
              :reviews,
              :id

  def initialize(book_info, review_info)
    @title = book_info[0][:title_suggest]
    @author = book_info[0][:author_name]
    @publisher = book_info[0][:publisher]
    @results = review_info[:num_results]
    @reviews = review_results(review_info)
  end

  def review_results(review_info)
    reviews = {}
    review_info[:results].each do |review|
      reviews[review[:publication_dt]] = review[:summary]
    end
    reviews
  end
end
