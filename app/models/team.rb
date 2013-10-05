class Team < ActiveRecord::Base
  attr_accessible :name, :user_id

  belongs_to :user
  has_many :team_members

end
