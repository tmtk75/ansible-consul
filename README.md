consul
=========
Ansible role for [consul](http://www.consul.io/).
This role ensures that consul runs as a daemon.

Requirements
------------
- unzip command on remote hosts

Role Variables
--------------
- datacenter (`local`)
- node\_name (`{{ ansible_hostname }}`)
- bootstrap (false) - Equivalent to `-bootstrap` command-line flag
- server (false) - Equivalent to `-server` command-line flag
- data\_dir (`/var/lib/consul`) - Equivalent to `-data-dir` command-line flag

Dependencies
------------
No dependencies.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: tmtk75.consul }

License
-------
MIT

Author Information
------------------
github: https://github.com/tmtk75  
twitter: https://twitter.com/tmtk75  
blog: http://blog.tmtk.net

