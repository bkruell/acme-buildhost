class buildhost::rpm-config {
 
  file{'/etc/hammer/cli.modules.d/foreman.yml':
    ensure	=> file,
    owner	=> root,
    group	=> root,
    mode	=> 600,
    content	=> template('buildhost/hammer/foreman.yml.erb'),
  }

}
