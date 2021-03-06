module Ruboty
  module Itc
    module Actions
      class Base < Ruboty::Actions::Base
        def initialize(message)
          @message = message
          @application = application
        end

        private

        def application
          Spaceship::Tunes.login(ENV['ITC_APPLE_ID'], ENV['ITC_PASSWORD'])
          Spaceship::Tunes::Application.find(message[:number])
        end

        def name
          @application.details.name['ja']
        end

        def bundle_id
          @application.bundle_id
        end

        def sku
          @application.vendor_id
        end

        def apple_id
          @application.apple_id
        end

        def current_version
          @application.live_version.version
        end

        def current_status
          @application.live_version.app_status
        end

        def next_version
          @application.edit_version.version
        end

        def next_status
          @application.edit_version.app_status
        end
      end
    end
  end
end
