require 'puppet-lint'

desc "Init submodules"
task :init do
  system "git submodule init"
  system "git submodule update"
end

desc "Run lint check on puppet manifests"
task :lint do
	linter =  PuppetLint.new
	Dir.glob('./**/*.pp').each do |puppet_file|
		# Exceptions for 3rd party modules
		next if puppet_file =~/^\.\/rvm\//
		puts "Evaluating #{puppet_file}"
		linter.file = puppet_file
		linter.run
	end
	fail if linter.errors?
end

