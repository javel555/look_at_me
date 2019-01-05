require "ruboty/look_at_me/actions/fizzbuzz"

module Ruboty
  module Handlers

    class Fizzbuzz < Base

      on /fizzbuzz (?<number>.*?)\z/, name: 'fizzbuzz', description: 'output fizzbuzz result'
      def fizzbuzz(message)
        Ruboty::LookAtMe::Actions::Fizzbuzz.new(message).call
      end

      on /生命、宇宙、そして万物についての究極の疑問の答え/, name: 'fortytwo', description: 'Answer to the Ultimate Question of Life, the Universe, and Everything'
      def fortytwo(message)
        message.reply('42')
      end

    end

  end
end