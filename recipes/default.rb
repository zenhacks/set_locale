unless  ENV["LANGUAGE"] == node[:locale] &&
        ENV["LANG"] == node[:locale] &&
        ENV["LC_ALL"] == node[:locale]

  template "/etc/profile.d/lang.sh" do
    source  "lang.sh.erb"
    mode "0644"
  end

  execute "locale-gen" do
    command "locale-gen #{node[:locale]}"
  end

  execute "dpkg-reconfigure-locales" do
    command "dpkg-reconfigure locales"
  end
end
