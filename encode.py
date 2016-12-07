#!/usr/bin/env python
"""Print a file as base64 string."""

import StringIO
import base64
import gzip
import sys


def main(argv):
    """Main method."""
    with open(argv[1], 'r') as myfile:
        datum = myfile.read()
        zipped = StringIO.StringIO()
        with gzip.GzipFile(fileobj=zipped, mode='w') as myzipfile:
            myzipfile.write(datum)
        sys.stdout.write(base64.b64encode(zipped.getvalue()))

if __name__ == '__main__':
    main(sys.argv)
