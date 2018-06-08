def stepCount(oneArr, twoArr, pC) 
   return (oneArr == twoArr) || (pC == -2) ? ( (twoArr.size-pC-1)>twoArr.size/2 ? pC + 1 : twoArr.size-pC-1 ) : stepCount(oneArr << oneArr.shift, twoArr, pC - 1)  
end
puts stepCount(ARGV[0].to_s.split(//), ARGV[1].to_s.split(//), ARGV[1].to_s.split(//).size-1)
