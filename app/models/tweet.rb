class Tweet < ActiveRecord::Base
  attr_accessible :text
  belongs_to :user

  validates_presence_of :user_id

end
