require "ruboty/look_at_me/actions/fizzbuzz"

module Ruboty
  module Handlers

    class Fizzbuzz < Base

      on /fizzbuzz (?<number>.*?)\z/, name: 'fizzbuzz', description: 'output fizzbuzz result'
      def fizzbuzz(message)
        Ruboty::LookAtMe::Actions::Fizzbuzz.new(message).call
      end

    end

  end
end