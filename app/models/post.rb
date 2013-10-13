class Post < ActiveRecord::Base

  def self.search(keyword)
    if keyword
      Post.where("title LIKE '%#{keyword}%' OR content LIKE '%#{keyword}%'")
    else
      Post.all
    end
  end

end
