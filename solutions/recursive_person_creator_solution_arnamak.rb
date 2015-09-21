require 'csv'

class Person
  def initialize(args={})
    @first_name = args[:first_name]
    @last_name  = args[:last_name]
    @email      = args[:email]
  end
end

##################################################################################################

module RecursivePersonCreator

  def self.import(raw_csv)
    @tabled_csv = CSV.table(raw_csv)
    pop_csv(@tabled_csv)
  end

  def self.pop_csv(tabled_csv)
    if tabled_csv[1]
      single_csv_line = tabled_csv.delete(0)
      hashify_csv_values(single_csv_line)
    else
      puts "done"
    end
  end

  def self.hashify_csv_values(single_csv_line)
    hashed_csv_person = single_csv_line.to_hash
    instantiate_person(hashed_csv_person)
  end

  def self.instantiate_person(hashed_csv_person)
    Person.new(**hashed_csv_person)
    pop_csv(@tabled_csv)
  end

end

RecursivePersonCreator.import('people.csv') #=> done
