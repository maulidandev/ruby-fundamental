print "Masukkan banyak angka : "
n = gets.to_i
data = Array.new

for i in 0..n-1 do
    print "angka ke ", i+1, " : "
    data[i] = gets.to_i
end

min = data[0]
max = data[0]

for i in 0..data.length-1 do
    if min > data[i]
        min = data[i]
    end
    
    if max < data[i]
        max = data[i]
    end
end

print "-------------------------\n"
print "Nilai minimal : ", min, "\n"
print "Nilai maximal : ", max, "\n"