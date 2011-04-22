#coding: utf-8
class Mono
  include Mongoid::Document
  include Mongoid::Timestamps
  field :from, :type => String
  field :to, :type => String
  field :body, :type => String
  field :status, :type => Integer

  validates :from, :presence => true
  validates :to, :presence => true
  validates :body, :presence => true
  validates :status, :presence => true

  STATUSES = [
    {:value => 0, :text => '買って'},
    {:value => 1, :text => '買ってくる'},
    {:value => 2, :text => '買ってきた'},
    {:value => 99, :text => 'ダメ'}
  ]
end
