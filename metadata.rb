name "set_locale",
description "A cookbook to set locales (default to en_US-UTF8) to enable using UTF8 databases with PostgreSQL server",
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
maintainer "Steven Yang",
maintainer_email "yangchenyun@gmail.com",
%w{ debian ubuntu }.each do |os|
  supports os
end
