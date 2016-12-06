module Taobao
  module Rails
    class Engine < ::Rails::Engine

      initializer "taobao.top" do |app|
        if defined?(::OmniAuth::Strategies::Taobao)
          ::OmniAuth::Strategies::Taobao.option :client_options, ::Taobao::TOP.gateways
        end
      end

    end
  end
end