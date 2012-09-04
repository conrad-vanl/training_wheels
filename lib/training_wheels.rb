require "training_wheels/version"

module TrainingWheels
  autoload(:TiltHandlebars, 'training_wheels/tilt_handlebars')
  autoload(:Config, 'training_wheels/config')

  if defined?(Rails) && defined?(::Rails::Engine)
    require 'training_wheels/engine'
  else
    require 'sprockets'
    Sprockets.register_engine '.hbs', TiltHandlebars
    Sprockets.register_engine '.handlebars', TiltHandlebars
  end
end
