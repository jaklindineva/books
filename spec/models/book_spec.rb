require "rails_helper"
 
describe Book do
  describe "search for similar books" do

    before :each do
      @book1 = FactoryBot.create(:book, title: 'It', author: 'Stephen King')
      @book2 = FactoryBot.create(:book, title: "The Martian", author: 'Andy Weir')
      @book3 = FactoryBot.create(:book, title: 'Carrie', author: 'Stephen King') 
    end

    it 'finds books with the same author' do
      expect(Book.similar_books(@book1)).to eq([@book1, @book3])
      expect(Book.similar_books(@book2)).to eq([@book2])
    end

    it 'does not find books with different author' do
      expect(Book.similar_books(@book1)).to_not include([@book2])
      expect(Book.similar_books(@book2)).to_not include([@book1, @book3])
    end
  end
end
