class TicketSerializer < ActiveModel::Serializer
  attributes :id, :price, :user, :production

  def user
    object.user.name
  end 

  def production
    object.production.title
  end 
end
