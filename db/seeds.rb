# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Content.destroy_all
Page.destroy_all

100.times do
  User.create!( { name: Faker::Name.name })
end

header = Header.create!(:content => "Some Html Or Other Meta Data used for rendering the header")
category_page = Page.new(
  :title => "Featured Content",
  :menu_text => "Categories",
  :header => header
)
category_page.tag_list.add("Featured")
category_page.save!

header = Header.create!(:content => "Blurb goes here that introduces this section. It will be about a sentence or two of text. Something else here. Another sentence there. Just another sentence here. That should do it.")
page = Page.new(
  :title => "Interviewing & Engaging",
  :menu_text => "Interviewing & Engaging",
  :header => header,
  :parent => category_page
)
page.tag_list.add("Interviews", "Hiring")
page.save!

header = Header.create!(:content => "Html or Meta data for rendering pruchase of the book")
page = Page.new(
    :title => "Hiring for Diversity",
    :menu_text => "Book: Hiring for Diversity",
    :header => header
)
page.tag_list.add("Hiring for Diversity")
page.save!

book = Book.new(
    :title => "Hiring for Diversity",
    :content => "Stuff about this book"
)
book.tag_list.add("Featured", "Hiring for Diversity")
book.save!

book_chapter = BookChapter.new(
    :title => "CHAPTER 01",
    :sub_title => "Setting the stage",
    :sort_order => 1,
    :parent => book,
    :content => "You came to this book for a reason. Something compelled you. You might have been moved by something in the news, a conversation with your team, or your own personal experiences."
)
book_chapter.tag_list.add("Featured", "Hiring for Diversity")
book_chapter.save!
  
book_chapter = BookChapter.new(
    :title => "CHAPTER 02",
    :sub_title => "Building Your Diversity Hiring Vision, Goals, and Reporting",
    :sort_order => 2,
    :content => "If you look at organizations that have made the greatest strides in their diversity hiring, you would find that they all have certain things in common: they set clear goals, measured their results, and reported their progress. "
)
book_chapter.tag_list.add("Hiring for Diversity")
book_chapter.save!

interview = Interview.new(
   :title => "How sentiment and storytelling can improve attitude",
   :length_in_minutes => 10,
   :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus elementum urna."
)
interview.tag_list.add("Interviews", "Hiring", "Equity", "Diversity")
interview.save!