#!/usr/bin/env python
"""Save a file from its base64 encoding."""

import base64
import gzip
import sys


def main(argv):
    """Main method."""
    datum = None
    with open(argv[1], 'r') as myfile:
        datum = base64.b64decode(myfile.read())
    with open(argv[1], 'w') as myfile:
        myfile.write(datum)
    unzipped = None
    with gzip.GzipFile(argv[1], mode='r') as zipped:
        unzipped = zipped.read()
    with open(argv[1], 'w') as myfile:
        myfile.write(unzipped)

if __name__ == '__main__':
    main(sys.argv)
