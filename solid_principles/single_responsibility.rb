class Logger
  def log(message)
    puts message
  end
end

class Authenticator
  def initialize
    @logger = Logger.new
  end

  def sign_in(profile)
    @logger.log("User #{profile.username} signed in at #{profile.signed_in_at}")
  end
end

