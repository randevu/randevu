require 'albacore'

task :default => ['randevu:build']

namespace :randevu do

	msbuild :build do |msb|
		msb.solution = "src/Randevu.sln"
		msb.targets :clean, :build
		msb.properties :configuration => :release
	end
	
end


