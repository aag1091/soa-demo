class PostSearch

  attr_accessor :keyword

  def initialize(keyword)
    @keyword = keyword
  end

  def posts
    Post.where(search_query)
  end

  private

  def search_query
    keyword ? "#{title_search} OR #{content_search}" : "1=1"
  end

  def title_search
    "title like '%#{keyword}%'"
  end

  def content_search
    "content like '%#{keyword}%'"
  end

end