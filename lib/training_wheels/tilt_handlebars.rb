require 'tilt'

module TrainingWheels
	class TiltHandlebars < Tilt::Template
		def self.default_mime_type
			'application/javascript'
		end

		def evaluate(scope, locals, &block)
			template_path = TemplatePath.new(scope)

			"Ember.TEMPLATES[#{template_path.name.inspect}] = Ember.Handlebars.compile(#{data.inspect})"
		end

		protected

		def prepare; end

		# based on / copied from leshill/handlebars_assets
		class TemplatePath
			def initialize(scope)
				self.template_path = scope.logical_path
			end

			def is_partial?
				template_path.gsub(%r{.*/}, '').start_with?('_')
			end

			def name
				is_partial? ? partial_name : template_name
			end

			private

			attr_accessor :template_path

			def forced_underscore_name
				'_' + relative_path
			end

			def relative_path
				template_path.gsub(/^#{HandlebarsAssets::Config.path_prefix}\/(.*)$/i, "\\1")
			end

			def partial_name
				forced_underscore_name.gsub(/\//, '_').gsub(/__/, '_').dump
			end

			def template_name
				relative_path.dump
			end
		end
	end

end