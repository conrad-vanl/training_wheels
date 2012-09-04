module TrainingWheels
	module Config
		extend self
		attr_writer :path_prefix

		def path_prefix
			@path_prefix || 'templates'
		end
	end
end