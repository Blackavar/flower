# encoding: UTF-8
require_relative 'sound_command'
class Wilhelm < SoundCommand
  respond_to 'wilhelm'
  def self.respond(message)
    play_file('wilhelm/WilhelmScream_64kb.mp3')
  end
end