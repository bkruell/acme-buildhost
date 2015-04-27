class buildhost::rpm-user{

  include rpm-install

  user{${builduser}:
    ensure	=> present,
    uid		=> 2001,
    gid		=> ${builduser},
    shell	=> '/bin/bash',
    home	=> "/home/{$builduser}",
    managehome	=> true,
  }

}
