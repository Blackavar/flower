class Straya < Flower::Command
  listen_to /straya|[Aa]ustralia/i

  def self.description
    "Straya, mate!"
  end

  def self.listen(message)
    new_message = message
    new_message.message = "!rpic straya"
    Pic.respond(new_message)
  end
end