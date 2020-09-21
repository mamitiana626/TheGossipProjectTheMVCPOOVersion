class Gossip

  attr_reader:content
  attr_reader:athor
  
  def initialize(author, content)
    @content = content
    @author = author
  end
  
 def save 
     CSV.open("./db/gossip.csv", "a+") do |f|
      f << [@author,@content]
    end
 end

  def self.all #voir gossip
    CSV.read("./db/gossip.csv").each do |line|
    puts line
    end

  end


end
