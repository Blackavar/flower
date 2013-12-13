class Tp < Flower::Command
  listen_to /tp/i

  TPS = %w[
    http://damontucker.files.wordpress.com/2009/05/tp-002.jpg
    http://andrew.hedges.name/blog/assets/imgs/the-loop/tp_angle.jpg
    http://upload7.ir/images/64465904849467354485.jpg
    http://www.sifalibitkim.com/wp-content/uploads/2013/07/essiz-tuvalet-kagidi-tasarimlari-1043469.jpeg
    http://10marifet.org/imaj/justThink/il-570xn-236868031.jpg
  ]

  def self.description
    "TP!"
  end

  def self.respond(message)
    if (1..TP.size).include?(message.argument.to_i)
      message.say TP[message.argument.to_i - 1]
    else
      message.say TP.sample
    end
  end
end