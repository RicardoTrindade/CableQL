class QueryManager
  def self.parse(query_string)
    yield(get_document(query_string))
  end

  def self.get_document(query_string)
    cache_key = Base64.encode64(query_string)
    document = Rails.cache.fetch(cache_key)
    unless document
      document = GraphQL.parse(query_string)
      Rails.cache.write(cache_key, document)
    end
    document
  end
end
