# encoding: UTF-8
class Bees < Flower::Command
  respond_to "bees"

  BEES = %w[
    http://stream1.gifsoup.com/view3/1424727/oprah-s-bee-give-away-o.gif
    http://i7.photobucket.com/albums/y252/CGreypaw/oprah-amazing-bees-giveaway-.gif
    http://i3.kym-cdn.com/photos/images/original/000/101/963/THOM%20HATES%20BEES.gif
    http://cdn.doandroidsdance.com/assets/2013/05/skrillex-bee.gif
    http://www.teamvalkyrieftw.com/wp-content/uploads/2013/03/oprah_bees.gif
  ]

  def self.description
    "You all get BEES!"
  end

  def self.respond(message)
    if (1..BEES.size).include?(message.argument.to_i)
      message.say BEES[message.argument.to_i - 1]
    else
      message.say BEES.sample
    end
  end
end