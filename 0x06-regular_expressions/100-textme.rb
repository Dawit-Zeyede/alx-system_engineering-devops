#!/usr/bin/env ruby
SENDER = ARGV[0].scan(/from:\+*\w*/).join[5..-1]
RECIEVER = ARGV[0].scan(/to:\+*\w*/).join[3..-1]
FLAGS = ARGV[0].scan(/flags:(.*?)\]/).join

message = SENDER + "," + RECIEVER + "," + FLAGS
puts message
