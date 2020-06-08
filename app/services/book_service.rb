class BookService

  def get_books(title)
  response = conn.get("search.json?title=#{title}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://openlibrary.org")
  end
end
