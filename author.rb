class Author
      attr_reader :name

    def initialize(name)
        @name = name
    end

    def books
        Book.all.select{|book| book.author == self}
    end

    def self.all
        Author.all
    end

    def write_book(title, word_count)
        book = Book.new(title, word_count)
        book.author = self
    end

    def total_words
        self.books.word_count
    end

    def most_words
        Book.all.select {|book| book.total_words.max == self}
    end
end
