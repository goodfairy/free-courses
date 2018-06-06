def getNode(a,b)
    if b.zero? then return a end
    return getNode(b, a % b)
end

def getValidVar(*toFind)
    toFind.map! { |elem| elem.to_i.abs }
    return toFind.sort!.reverse!
end

ab = getValidVar(*ARGV)
puts getNode(ab[0],ab[1])