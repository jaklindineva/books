class Book < ApplicationRecord

  before_save :titleize
  def self.all_genres ; ['Science fiction','Drama','Action and Adventure','Romance','Mystery','Horror']; end
  validates :title, :presence => true
  validates :genre, :presence => true
  validates :publish_date, :presence => true

  validates :isbn, :presence => {message: 'ISBN cannot be empty if the book is published after 01.01.1967'},
    :unless => :isbn_not_required?
 
  @@isbn_required_date = Date.parse('1 Jan 1967')
 
  def isbn_not_required?
    publish_date && publish_date < @@isbn_required_date
  end

  def titleize()
    self.title = self.title.downcase.split(/\s+/).map(&:capitalize).join(' ')
  end

end