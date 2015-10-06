module Ruboty
  module Handlers
    class Itc < Base
      on /itc current (?<number>.+?)\z/, name: 'get_current', description: 'Get current application information'

      def get_current(message)
        Ruboty::Itc::Actions::GetCurrent.new(message).call
      end
    end
  end
end
