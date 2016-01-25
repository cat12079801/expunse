require "expunse/version"
require "natto"

module Expunse
  class << self
    def judge str
      natto = Natto::MeCab.new
      natto.parse(str.to_s) do |s|
        puts "#{s.surface}\t#{s.feature}"
      end
    end
  end
end
