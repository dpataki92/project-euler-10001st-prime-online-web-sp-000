# Implement your procedural solution here!
def prime_number_for(num)
    primes = []
    counter = 2

    while primes.size < num
        if counter === 2 || counter === 3
            primes << counter
            counter += 1
        elsif !(2..Math.sqrt(counter).floor).any? {|n| counter % n === 0}
            primes << counter
            counter += 1
        else
            counter += 1
        end
    end

    primes[primes.size-1]
end