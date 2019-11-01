# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module Blazer
    # This is the engine that runs on the public interface of blazer.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::Blazer

      routes do
        # Add engine routes here
        # resources :blazer
        # root to: "blazer#index"
      end

      initializer "decidim_blazer.assets" do |app|
        app.config.assets.precompile += %w[decidim_blazer_manifest.js decidim_blazer_manifest.css]
      end
    end
  end
end
