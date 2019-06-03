class Author 
  
  attr_accessor :name, :posts
  @@post_count = 0 
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << posts
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
     @@all << posts
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
    
  end
  
  def self.post_count
    @@post_count
  end
end