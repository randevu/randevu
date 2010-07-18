require 'albacore'

task :default => ['randevu:build']

namespace :randevu do

	msbuild :build do |msb|
		msb.solution = "src/Randevu.sln"
		msb.targets :clean, :build
		msb.properties :configuration => :release
	end
	
	desc "XUnit Test runner"
	xunit :tests do |xunit|
		xunit.path_to_command = 'libs/xunit-1.6/xunit.console.exe'
		xunit.assembly = "src/Randevu.Tests/bin/Debug/Randevu.Tests.dll"
	end
	
end


