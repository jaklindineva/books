more_books = [
  {:title => 'The Cure', :genre => 'Drama', :isbn => '978-3-16-148410-0',
    :publish_date => '25-Dec-1998'},
  {:title => 'The Day', :genre => 'Horror', :isbn => '378-3-16-158410-9',
    :publish_date => '13-Jun-2002'},
  {:title => 'The Killer', :genre => 'Mystery', :description => 'The mystery of the year',
  :isbn => '958-3-16-158413-9', :publish_date => '03-Sep-2018'},
  {:title => 'Missing You', :genre => 'Romance', :description => 'A true love story', 
  :isbn => '458-6-17-154413-5', :publish_date => '22-Jul-2005'}
]
 
more_books.each do |book|
  Book.create!(book)
end