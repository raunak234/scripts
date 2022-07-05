#!/bin/sh

exec curl -s https://nepalidatetoday.com/ | grep 2079 | sed -n '2p'
