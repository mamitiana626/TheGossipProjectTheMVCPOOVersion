require 'gossip'
class View
  def create
    puts "Author:"
    author = gets.chomp#recuperation de author

    puts "Content"
    content = gets.chomp#recuperation de author
   return params = { content: content, author: author}
  end

  def indew_gossips
    Gossip.all
  end

    
end
