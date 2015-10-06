module Ruboty
  module Handlers
    class Itc < Base
      on /itc current (?<number>.+?)\z/, name: 'get_current', description: 'Get current application information'

      on /itc next (?<number>.+?)\z/, name: 'get_next', description: 'Get application information of next version'

      def get_current(message)
        Ruboty::Itc::Actions::GetCurrent.new(message).call
      end

      def get_next(message)
        Ruboty::Itc::Actions::GetNext.new(message).call
      end
    end
  end
end
