# encoding: utf-8
class Markov < Flower::Command
  require 'marky_markov'
  respond_to 'lovecraft'

  def self.respond(message)
    case message.command
      when 'lovecraft'
        puts Dir.pwd
        markov = MarkyMarkov::Dictionary.new('lovecraft')
        output = markov.generate_5_sentences
        message.say(output)
    end
  end
end