class Comment
  include Mongoid::Document
  field :name, :type => String
  field :body, :type => String

  validates :name, :presence => true
  validates :body, :presence => true
end
