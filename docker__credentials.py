#!/usr/bin/python

import sys

from os.path import expanduser
from netrc import netrc


def main(argv=None):
    """ """
#    if argv is None:
#        args = sys.argv[1:]
#
#    if len(args) != 0:
#        print "[docker-tools] 0 argument required, %i provided" % len(args)
#        return 0

    filename = expanduser("~/.docker_missing_tools_repositories")

    try:
        n = netrc(filename)
        hosts = n.hosts.keys()
    except IOError:
        hosts = None

    if hosts is None:
        return 0

    for host in hosts:

        try:
            n = netrc(filename)
            credentials = n.hosts.get(host, None)
        except IOError:
            credentials = None

        if credentials is not None:

            try:
                username = credentials[0]
            except IndexError:
                username = " "
            try:
                password = credentials[2]
            except IndexError:
                password = " "

            sys.stdout.write("%s %s %s\n" % (host, username, password))

    return 0


if __name__ == "__main__":
    main()
