class Tweet < ActiveRecord::Base
  attr_accessible :text
  validates :text, :presence => true
  validates :text, :length => { :in => 1..140 }
end
