class Comment
  include Mongoid::Document
  field :name, :type => String
  field :body, :type => String
  embedded_in :mono

  validates :name, :presence => true
  validates :body, :presence => true
end
