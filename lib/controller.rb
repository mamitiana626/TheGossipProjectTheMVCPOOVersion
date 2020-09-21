require 'view'
require 'gossip'

class Controller
   def initialize    
    @view = View.new
   end

  def index_gossips #demande au model une array qui contient toutes les potins que l'on a en base     
    @view.indew_gossips#demander à la view d'exéctuer la méthode index_gossips qui affichera tous les potins
  end
  
  def del
      arr_of_arrs = CSV.read("./db/gossip.csv")
      puts arr_of_arrs
      puts "Entre le numero index a suprimer:"
      indx = gets.chomp.to_i 
      indx -=indx
      arr_of_arrs.delete_at(indx)
      puts arr_of_arrs

      CSV.open("./db/gossip.csv", "w") do |csv|
      arr_of_arrs.each do |x, y|
      csv << [x, y]
  end
  end
end
  
  def create_gossip 
    @params = @view.create #return params author content   
    author = @params[:author]
    content = @params[:content]
    @gossip = Gossip.new(author,content) #instance de la classe Gossip
    #puts "line 0 et 1 "

    @gossip.save
  end

end