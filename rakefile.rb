require 'albacore'

task :default => [:build]

msbuild :build do |msb|
	msb.solution = "src/Randevu.sln"
	msb.targets :clean, :build
	msb.properties :configuration => :release
end