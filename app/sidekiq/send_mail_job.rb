class SendMailJob
  include Sidekiq::Job
  sidekiq_options retry: false

  def perform(user_id)
    user = User.find_by(id: user_id)
    user.is_sent_mail = true
    user.save!
    puts "#{user.name} has been sent mail!" 
  end
end
