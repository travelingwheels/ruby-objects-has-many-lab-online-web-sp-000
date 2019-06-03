class Author 
  
  attr_accessor :name, :posts, :title
  @@post_count = 0 
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << title
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
     @@all << title
  end
  
  def self.post_count
    @@post_count
  end
end