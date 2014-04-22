#!/bin/sh
# Symetrically balances the children of the root node in the given
# FreeMind mind map such that there are nearly equal number of children
# on the left and right sides of the root node.
#
# For example, the first child is placed to the right of the root node,
# the second child is placed to the left of the root node, the third child
# is placed to the right of the root node, and so on.
#
# Thus, every odd-numbered child is placed on the right side and every
# even-numbered child is placed on the left side of the root node.

awk '/<[^>]*POSITION=/ { i++; sub("POSITION=\"[^\"]*\"", sprintf("POSITION=\"%s\"", (i%2 ? "right" : "left"))); } { print }' "$@"
