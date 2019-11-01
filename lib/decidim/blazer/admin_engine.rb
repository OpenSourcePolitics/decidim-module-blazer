# frozen_string_literal: true

module Decidim
  module Blazer
    # This is the engine that runs on the public interface of `Blazer`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::Blazer::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        # Add admin engine routes here
        # resources :blazer do
        #   collection do
        #     resources :exports, only: [:create]
        #   end
        # end
        # root to: "blazer#index"
      end

      def load_seed
        nil
      end
    end
  end
end
