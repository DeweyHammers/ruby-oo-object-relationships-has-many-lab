class Author 
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post)
        post = Post.new(post)
        post.author = self
    end

    def self.post_count
        Post.all.length
    end

    def posts
        Post.all.select {|post| post.author == self}
    end 
end