module Ruboty
  module Itc
    module Actions
      class GetCurrent < Base
        def call
          message.reply(body, code: true);
        end

        private

        def body
          ary = []
          ary << "Name     : #{name}"
          ary << "Bundle ID: #{bundle_id}"
          ary << "SKU      : #{sku}"
          ary << "Apple ID : #{apple_id}"
          ary << "Version  : #{current_version}"
          ary << "Status   : #{current_status}"
          ary.join("\n")
        end
      end
    end
  end
end
