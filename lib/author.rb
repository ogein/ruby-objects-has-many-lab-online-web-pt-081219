class Author

  attr_accessor :name
  attr_reader :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end
  
  def posts
    Post.all.select{|x| x.author == self}
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
  end

 def self.post_count
    Post.all.count
  end

end
