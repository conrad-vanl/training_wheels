module TrainingWheels
	module Config
		extend self
		attr_writer :path_prefix, :include_paths

		def path_prefix
			@path_prefix || 'templates'
		end

    def include_path?
      @include_path || true
    end
	end
end