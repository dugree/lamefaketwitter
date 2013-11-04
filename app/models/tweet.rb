class Tweet < ActiveRecord::Base
  attr_accessible :text

  validates :tweet, :presence => true
  validates :tweet, :length => { :in => 1..140 }
end
