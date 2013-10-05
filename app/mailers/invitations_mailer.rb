class InvitationsMailer < ActionMailer::Base
  default from: "support@projectcapsule.com"

  def team_invitations(team_member, team_id)
    @team = Team.find_by_id(team_id)
    @accept_url = accept_url(team_member.token)
    mail(
      to: invitation.recipient_email,
      subject: "You have been invited to TinyContacts"
      )
  end

end
