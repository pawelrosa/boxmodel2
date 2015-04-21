dir = File.dirname(__FILE__)
$LOAD_PATH.unshift dir unless $LOAD_PATH.include?(dir)

unless defined?(Sass)
  require 'sass'
end

module Boxmodel2
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      require 'boxmodel2/engine'
    end
  else
    boxmodel2_path = File.expand_path("../../app/assets/stylesheets", __FILE__)
    ENV["SASS_PATH"] = [ENV["SASS_PATH"], boxmodel2_path].compact.join(File::PATH_SEPARATOR)
  end
end