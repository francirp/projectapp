class TeamMember < ActiveRecord::Base
  attr_accessible :team_id, :user_id, :email

  belongs_to :team_member
  belongs_to :user

  after_save :send_invite


  private
    def send_invite

    end

end
