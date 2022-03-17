class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :admin, :email
  has_many :tickets
  has_many :productions
end
