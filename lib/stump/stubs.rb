module Stump
  class Stubs
    class << self
      def add(object, method)
        stubs << [object, method]
      end

      def stubs
        @stubs ||= []
      end

      def clear!
        stubs.each do |object, method|
          object.reset(method)
        end
      end
    end
  end
end
