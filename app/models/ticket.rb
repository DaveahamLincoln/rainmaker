class Ticket < ActiveRecord::Base
  def validate
    if $deadline < Time.now
      return false
    else
      if Ticket.count(username: self.username) > 1
        return false
      else
        #client = Redd::Client::OAuth2.new("ThmHqzn9SjCz0g", "48JxXaLg1L3sxV8imZGez4ZWlNg", "http://www.example.com/unused/redirect/uri")
        client = Snooby::Client.new
        response = client.user(self.username).about['created']
        logger.info response
        if response > 1416365304
          return false
        else
          return true
        end
      end
    end
  end
end
