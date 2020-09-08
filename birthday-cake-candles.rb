def getMax(arr)
    max = 0

    if arr.length > 0
        max = arr[0]

        arr.each do |number|
            if max < number
                max = number
            end
        end
    end

    return max
end

print "Masukkan banyak data :"
n = gets.chomp.to_i

print "Masukkan data : "
candles = gets.chomp
candles = candles.split(" ").map(&:to_i)

max = getMax(candles)

tallestCandlesCount = 0

candles.each do |candle|
    if max == candle
        tallestCandlesCount += 1
    end
end

print "Jumlah lilin tertinggi : "
print tallestCandlesCount