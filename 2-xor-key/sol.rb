#!/bin/ruby
# frozen_string_literal: true

## Minified solution (139 chars):
# rubocop:disable all

i=IO.read('enc_image.png').each_byte
k=IO.read('key').each_byte
k+=k while k.size<i.size
IO.binwrite('d',i.zip(k).map{|x,y|(x^y).chr}.join)

# rubocop:enable all
## Readable solution:

image = File.read('enc_image.png').each_byte

key = File.read('key').each_byte
key += key while key.size < image.size

decoded = ''
image.zip(key).each do |img_b, key_b|
  decoded += (img_b ^ key_b).chr
end

File.binwrite('decoded.png', decoded)
