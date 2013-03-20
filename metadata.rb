name "set_locale"
maintainer "Steven Yang"
maintainer_email "yangchenyun@gmail.com"
description "A cookbook to set locales (default to en_US-UTF8) to enable using UTF8 databases with PostgreSQL server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'
recipe "default", "set the system locales to en_US.UTF-8"
%w{ debian ubuntu }.each do |os|
  supports os
end
