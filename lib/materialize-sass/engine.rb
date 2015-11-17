module Materialize
  module Sass
    class Engine < ::Rails::Engine
      initializer 'materialize-sass.assets.precompile' do |app|
        app.config.assets.paths << root.join("app", "assets")
        app.config.assets.precompile << "manifest.js"
      end
    end
  end
end
