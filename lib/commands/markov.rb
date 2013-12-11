# encoding: utf-8
class Markov << Flower::Command
  require 'marky_markov'
  respond_to 'lovecraft'

  def self.respond(message)
    case message.command
      when 'lovecraft'
        # markov = MarkyMarkov::Dictionary.new('lovecraft')
        message.say('Testing')
    end
  end
end