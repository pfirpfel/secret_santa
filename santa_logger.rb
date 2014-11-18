class SantaLogger
  
  attr_accessor :sending

  @@logname = 'santa.log'

  def initialize
    File.delete(@@logname)
  end

  def log(message)
    if REALLY_SENDING # silently write to log file (in case mail sending fails)
      File.open(@@logname, 'a') do |f|
        f.puts "#{message}"
      end
    else
      puts "#{message}"
    end
  end

end
