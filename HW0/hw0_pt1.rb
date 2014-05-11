def sum(a)
    total = 0
    a.each do |x|
      total += x
    end
    return total
end

def max_2_sum(a)
    total = 0
    b = a.sort
    if b.count == 1
        total = b.first
    elsif b.count >= 2
        c = b.last(2)
        total = c.first + c.last
    end
    return total
end

def sum_to_n?(a, n)
    if a.count >= 2
        for i in 0..(a.count-1)
            for j in 0..(a.count-1)
                if i == j
                    next
                elsif a[i] + a[j] == n
                    return true
                end
            end
        end
    end
    return false
end

puts sum_to_n?([1,2,3,4], 2)