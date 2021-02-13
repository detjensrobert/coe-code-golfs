#!/bin/ruby

## Minified solution (142 chars):

i=IO::read("enc_image.png").each_byte
k=IO::read("key").each_byte
k+=k while k.size<i.size
IO::binwrite("d",i.zip(k).map{|x,y|(x^y).chr}.join)

## Readable solution:

image = File::read("enc_image.png").each_byte

key = File::read("key").each_byte
key += key while key.size < image.size

decoded = ""

image.zip(key).each do |b, k|
  decoded += (b ^ k).chr
end.join

File.binwrite("decoded.png", decoded)
