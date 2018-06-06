def stepCount(oneArr, twoArr)
    if (oneArr-twoArr).any? then return -1 end
    pushCount = 0
    until (pushCount == oneArr.size) || (oneArr == twoArr) do
        oneArr.push(oneArr.shift)
        pushCount +=1  
    end
    case
      when pushCount == oneArr.size
        return -1
      when pushCount>(oneArr.size/2)
        return oneArr.size - pushCount
      else
        return pushCount
    end
end

userArrayOne=ARGV[0].to_s.codepoints.to_a
userArrayTwo=ARGV[1].to_s.codepoints.to_a
puts stepCount(userArrayOne, userArrayTwo)
