class TicketProductionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :production
end
