def checkPolindrom(word)
    word = word.chars
 
    i = word.length-1
    for char in word
        if char != word[i]
            return false
        end

        i -= 1
    end

    return i < 0
end

print "Masukkan Kalimat : "
word = gets.chomp

result = "Kalimat '" + word + "' adalah "

if checkPolindrom(word)
    result += "POLINDROM"
else
    result += "TIDAK POLINDROM"
end

puts result