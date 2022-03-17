class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :budget, :image, :ongoing, :director, :rose

  
  has_many :users

  def budget
    "$#{'%.2f' % object.budget}"
  end   

  def ongoing
    object.ongoing ? "Actively Showing" : "Not Showing"
  end 
  
  def rose 
    "rose is cute"
  end 
end

