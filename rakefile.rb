require 'albacore'

task :default => [:build]

msbuild :build do |msb|
	msb.solution = "src/Randevu.sln"
	msb.targets :clean, :build
	msb.properties :configuration => :release
end

desc "Assembly Info generator for Randevu.Mvc"
assemblyinfo :assemblyinfo_mvc do |asm|
	asm.version = "0.0.0.0"
	asm.company_name = "Prabir Shrestha"
	asm.product_name = "Randevu.Mvc"
	asm.title = "Randevu.Mvc"
	asm.description = ""
	asm.copyright = "Copyright (c) Prabir Shrestha 2010"
	asm.custom_attributes :AssemblyConfiguration => "", 
			:AssemblyTrademark => "", 
			:AssemblyCulture => "" ,
			:ComVisible => false,
			:Guid => "84aee30d-2fa0-41ea-8dca-c0fc7b39d5f3",
			:AssemblyFileVersion => "0.0.0.0"
	asm.output_file = "src/Randevu.Mvc/Properties/AssemblyInfo.cs"
end

desc "XUnit Test runner"
xunit :tests do |xunit|
	xunit.path_to_command = 'libs/xunit-1.6/xunit.console.exe'
	xunit.assembly = "src/Randevu.Tests/bin/Debug/Randevu.Tests.dll"
end


