require'dotenv-rails'

Dotenv.load

class Meetup
    def initialize()
    @client = RMeetup::Client.new do |config|
    config.api_key =ENV['MAILCHIMP_API_KEY']
  end
end
  
  def search()
  results = @client.fetch(:events, { event_id: 'lkqcnlkfq' })
  p results
  end
end