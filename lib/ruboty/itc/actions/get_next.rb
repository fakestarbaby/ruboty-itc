module Ruboty
  module Itc
    module Actions
      class GetNext < Base
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
          ary << "Version  : #{next_version}"
          ary << "Status   : #{next_status}"
          ary.join("\n")
        end
      end
    end
  end
end
