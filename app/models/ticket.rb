class Ticket < ActiveRecord::Base
  validates_uniqueness_of :username, case_sensitive: false

  def validate
    if $deadline < Time.now
      puts 'deadline failure'
      return false
    else
      client = Snooby::Client.new
      response = client.user(self.username).about['created']
      puts response
      puts response
      puts response
      puts response
      puts response
      puts response
      puts response
      puts response
      puts response
      if response > 1416365304
        return false
      else
        return true
      end
    end
  end
end
