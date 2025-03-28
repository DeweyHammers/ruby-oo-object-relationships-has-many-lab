class Post
    attr_accessor :author
    attr_reader :title
    
    @@all = []
    
    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author ? self.author.name : nil
    end
end