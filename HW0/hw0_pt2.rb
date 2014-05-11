def hello(name)
    return "Hello, " + name
end

def starts_with_consonant?(s)
    if (s =~ /^[b-df-hj-np-tv-z].*/i) != nil
        return true
    end
    return false
end

def binary_multiple_of_4?(s)
    if (s =~ /^[01]+$/) == nil
        return false
    end
    i = s.to_i(2)
    if i % 4 == 0
        return true
    end
    return false
end
