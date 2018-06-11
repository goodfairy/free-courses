def delRKN(strToDel)
  return (strToDel.to_s.codepoints.to_a - [ 1088, 1085, 1082, 1056, 1053, 1050 ]).pack('U*') 
end
puts delRKN(ARGV[0])
