class Book
    attr_reader :title, :author , :word_count
    
    @@all = []

    def initialize(title, author, word_count)
        @@all << self
    end

    def word_count
        self.word_count
    end

    def self.all
        @@all
    end

end
