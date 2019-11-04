# frozen_string_literal: true

require "blazer"

module Decidim
  module Blazer
    # This is the engine that runs on the public interface of `Blazer`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::Blazer::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        authenticate :user, ->(user) { user.admin? } do
          mount ::Blazer::Engine, at: "blazer"
        end

        constraints(->(request) { Decidim::Admin::OrganizationDashboardConstraint.new(request).matches? }) do
          get :blazer_settings, controller: "settings", action: "show"
        end

        root to: "blazer#index"
      end

      initializer "decidim_blazer.admin_mount_routes" do
        Decidim::Core::Engine.routes do
          mount Decidim::Blazer::AdminEngine, at: "/admin", as: "decidim_blazer"
        end
      end

      def load_seed
        nil
      end
    end
  end
end
