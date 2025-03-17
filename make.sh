#!/bin/sh

minify src.html | sed -E "
s/\"/'/g

# inline JS into onload
s/^<body (.*)<script>(.*)<\\/script>\$/<body onload=\"\\2\" \\1/

# remove trailing tags
s/(<\\/[a-z]+>)+\$//
" > ubreakout.html
