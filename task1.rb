def delRKN(strToDel)
  chrCPDel = Array.new
  chrCPDel = [ 1088, 1085, 1082, 1056, 1053, 1050 ]
  strCPToDel = strToDel.to_s.codepoints.to_a 
  strBToRet = strCPToDel - chrCPDel
  return strBToRet.pack('U*')
end

puts delRKN(ARGV[0])