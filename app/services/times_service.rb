class TimesService

  def all_reviews(title)
    response = conn.get("/svc/books/v3/reviews.json?title=#{title}")

    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nytimes.com") do |faraday|
      faraday.params["api-key"] = ENV["reviews_key"]
    end
  end
end
