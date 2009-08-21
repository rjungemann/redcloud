# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'redcloud'

depend_on "moneta"
depend_on "thin"
depend_on "sinatra"
depend_on "uuid"
depend_on "johnson"

task :default => 'spec:run'

PROJ.name = 'redcloud'
PROJ.authors = 'Roger Jungemann'
PROJ.email = 'roger@thefifthcircuit.com'
PROJ.url = 'http://thefifthcircuit.com'
PROJ.version = Redcloud::VERSION
PROJ.rubyforge.name = 'redcloud'

PROJ.spec.opts << '--color'

# EOF
