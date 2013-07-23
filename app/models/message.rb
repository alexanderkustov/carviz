class Message < ActiveRecord::Base
  attr_accessible :desc, :subject, :user_from, :user_to

  has_and_belongs_to_many :users

end
