require 'JSON'
require 'yajl'
require 'resque'

class Flower
  class Queues
    class RawMessage
      @queue = 'raw_message'

      def self.perform(message)
        puts "dequeueing"
        puts "From: #{message['from']}"
        puts "Reply to: #{message['reply_to']}"
        puts "Flow: #{message['flow']}"
        puts "Content: #{message['content']}"
        sleep 1
      end
    end
  end
end