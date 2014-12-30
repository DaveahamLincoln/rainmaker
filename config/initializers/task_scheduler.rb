require 'digest/md5'
require 'fileutils'

scheduler = Rufus::Scheduler.start_new

scheduler.at($deadline) do
#scheduler.every('1m') do
  #creates checksum of sqlite database
  FileUtils.copy('db/development.sqlite3','db/final.sqlite3')
  checksum = Digest::MD5.hexdigest(File.read("db/final.sqlite3"))
  sum = Shasum.new(sum: checksum)
  sum.save!
  
  #waits for the 3rd bitcoin block
  response = HTTParty.get('https://blockchain.info/latestblock')
  time_index = response["time"]
blockcount = 1
#  blockcount = 1
  while blockcount < 3
#  while blockcount < 1
    puts blockcount 
    response = HTTParty.get('https://blockchain.info/latestblock')
    if response["time"] > time_index
      time_index = response["time"]
      blockcount +=1
    end
    #waits 15 mins
    sleep(900.0)
  end

  checksum = response["hash"]
  checksum_int = Digest::MD5.hexdigest(checksum).to_i
  #puts checksum_int
  number_of_tickets = Ticket.count
  #puts number_of_tickets
  selector = checksum_int % number_of_tickets
  #puts selector
  winner = Ticket.limit(1).offset(selector).first
  winner_object = Winner.new(username: winner.username)
  winner_object.save!
end 