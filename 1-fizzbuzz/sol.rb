#!/bin/ruby

# 66 chars
(1..100).map{|x|s=(x%3==0?"fizz":"")+(x%5==0?"buzz":"");s==""?x:s}
