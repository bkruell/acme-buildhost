class buildhost::rpm-install {

  $hammer_pkgs = ['rubygem-hammer_cli', 'rubygem-hammer_cli_foreman', 'rubygem-hammer_cli_katello', 'rubygem-hammer_cli_foreman_tasks', 'rubygem-hammer_cli_csv']

  package{$hammer_pkgs:
   ensure	=> present,
  }

  package{'rpm-build':
    ensure	=> present,
  }

  package{'rpm-sign':
    ensure	=> present,
  }

  package{'rpmlint':
    ensure	=> present,
  }

}
