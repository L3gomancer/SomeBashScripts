#!/bin/sh
# sync folders

rsync -r \
--exclude=.* \
--exclude=*.txt \
--exclude=*.png \
/Users/Ed/Documents/Projects/Tutorials/Laracasts/PHPPractitioner/ \
/Users/Ed/.bitnami/stackman/machines/xampp/volumes/root/htdocs/Laracasts/PHPPractitioner
