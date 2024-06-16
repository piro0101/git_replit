#!/bin/bash/library.sh

dir=$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )
. ${dir}/inpath
. ${dir}/validint
. ${dir}/valid-date

