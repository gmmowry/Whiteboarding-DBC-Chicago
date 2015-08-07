def count_candy(instructions)
    jars = {}
    total_candy = 0

    # create jars
    (1..instructions.first).each do |jar|
        jars[jar] = 0
    end

    # fill jars
    instructions[1..-1].each do |instruction|
        (instruction[0]..instruction[1]).each do |jar|
            jars[jar] += instruction.last
            total_candy += instruction.last
        end
    end

    # return average
    total_candy/jars.count
end

# Test
instructions = [5,[1,2,100],[2,5,100],[3,4,100]]
puts count_candy(instructions) == 160