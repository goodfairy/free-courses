def getNode(*toFind)
    def calcNode(a,b)
        return b.zero? ? a : calcNode(b, a % b)
    end
    toFind.map! { |elem| elem.to_i.abs }.sort!.reverse!
    return calcNode(toFind[0], toFind[1])
end
puts getNode(*ARGV)
#puts ARGV[0].to_i.abs.gcd ARGV[1].to_i.abs
