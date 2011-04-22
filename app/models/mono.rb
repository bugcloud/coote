#coding: utf-8
class Mono
  include Mongoid::Document
  include Mongoid::Timestamps
  field :from, :type => String
  field :to, :type => String
  field :body, :type => String
  field :status, :type => Integer

  validates :body, :presence => true
  validates :status, :presence => true

  before_create :set_defaults_value

  STATUSES = [
    {:value => 0, :text => '買って'},
    {:value => 1, :text => '買ってくる'},
    {:value => 2, :text => '買ってきた'},
    {:value => 99, :text => 'ダメ'}
  ]

  def self.status_request
    Mono.status_value(0)
  end

  def self.status_will
    Mono.status_value(1)
  end

  def self.status_done
    Mono.status_value(2)
  end

  def self.status_deny
    Mono.status_value(3)
  end

  def self.status_request_text
    Mono.status_text(0)
  end

  def self.status_will_text
    Mono.status_text(1)
  end

  def self.status_done_text
    Mono.status_text(2)
  end

  def self.status_deny_text
    Mono.status_text(3)
  end

  protected
  def set_defaults_value
    if self.from.nil? || self.from == ""
      self.from = "Anonymous"
    end
    if self.to.nil? || self.to == ""
      self.to = "|:3ミ"
    end
  end

  private
  def self.status_value(index)
    STATUSES[index][:value]
  end

  def self.status_text(index)
    STATUSES[index][:text]
  end
end
