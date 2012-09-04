require "training_wheels/version"

module TrainingWheels
  autoload(:TiltHandlebars, 'trainingwheels/tilt_handlebars')

  if defined?(Rails) && defined?(::Rails::Engine)
    require 'training_wheels/engine'
  else
    require 'sprockets'
    Sprockets.register_engine '.hbs', TiltHandlebars
    Sprockets.register_engine '.handlebars', TiltHandlebars
  end
end
