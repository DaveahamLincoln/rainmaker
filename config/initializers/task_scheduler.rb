require 'digest/md5'
require 'fileutils'

scheduler = Rufus::Scheduler.start_new

scheduler.at($deadline) do
  FileUtils.copy('db/development.sqlite3','db/final.sqlite3')
  checksum = Digest::MD5.hexdigest(File.read("db/final.sqlite3"))
  sum = Shasum.new(sum: checksum)
  sum.save!
end 