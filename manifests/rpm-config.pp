class buildhost::rpm-config {
 
  include rpm-user

  file{'/etc/hammer/cli.modules.d/foreman.yml':
    ensure	=> file,
    owner	=> root,
    group	=> root,
    mode	=> 600,
    content	=> template('buildhost/hammer/foreman.yml.erb'),
  }

  file{ ["/home/{$builduser}/rpmbuild","/home/{$builduser}/rpmbuild","/home/{$builduser}/rpmbuild","/home/{$builduser}/UILD,RPMS,SOURCES,SPECS,SRPMS']:
    ensure	=> directory,
}
