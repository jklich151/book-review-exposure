class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :author, :publisher, :results, :reviews
end
