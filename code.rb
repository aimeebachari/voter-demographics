voter_demographics = [
  {first_name: "Jon", last_name: "Smith", age: 25, income: 50_000,
    household_size: 1, gender: "Male", education: "College"},
  {first_name: "Jane", last_name: "Davies", age: 30, income: 60_000,
    household_size: 3, gender: "Female", education: "High School"},
  {first_name: "Sam", last_name: "Farelly", age: 32, income: 80_000,
    household_size: 2, gender: "Unspecified", education: "College"},
  {first_name: "Joan", last_name: "Favreau", age: 35, income: 65_000,
    household_size: 4, gender: "Female", education: "College"},
  {first_name: "Sam", last_name: "McNulty", age: 38, income: 63_000,
      household_size: 3, gender: "Male", education: "College"},
  {first_name: "Mark", last_name: "Minahan", age: 48, income: 78_000,
    household_size: 5, gender: "Male", education: "High School"},
  {first_name: "Susan", last_name: "Umani", age: 45, income: 75_000,
    household_size: 2, gender: "Female", education: "College"},
  {first_name: "Bill", last_name: "Perault", age: 24, income: 45_000,
    household_size: 1, gender: "Male", education: "Did Not Complete High School"},
  {first_name: "Doug", last_name: "Stamper", age: 45, income: 75_000,
    household_size: 1, gender: "Male", education: "College"},
  {first_name: "Francis", last_name: "Underwood", age: 52, income: 100_000,
    household_size: 2, gender: "Male", education: "College"}
]

sum = 0
voter_demographics.each do |individual_data|
  sum += individual_data[:age]
end
av_age = sum.to_f / voter_demographics.size.to_f
puts "Average Age: #{av_age}"

sum = 0
voter_demographics.each do |individual_data|
  sum += individual_data[:income]
end
av_income = sum.to_f / voter_demographics.size.to_f
puts "Average Income: #{av_income}"

sum = 0
voter_demographics.each do |individual_data|
  sum += individual_data[:household_size]
end
av_household_size = sum.to_f / voter_demographics.size.to_f
puts "Average Household Size: #{av_household_size}"

female_count = 0
voter_demographics.each do |individual_data|
  if individual_data[:gender] == "Female"
    female_count += 1
  end
end
av_female = (female_count.to_f / voter_demographics.size.to_f) * 100
puts "Female %: #{av_female}"

male_count = 0
voter_demographics.each do |individual_data|
  if individual_data[:gender] == "Male"
    male_count += 1
  end
end
av_male = (male_count.to_f / voter_demographics.size.to_f) * 100
puts "Male %: #{av_male}"

unspecified_count = 0
voter_demographics.each do |individual_data|
  if individual_data[:gender] == "Unspecified"
    unspecified_count += 1
  end
end
av_unspecified = (unspecified_count.to_f / voter_demographics.size.to_f) * 100
puts "Unspecified Gender %: #{av_unspecified}"

college_count = 0
voter_demographics.each do |individual_data|
  if individual_data[:education] == "College"
    college_count += 1
  end
end
av_college = (college_count.to_f / voter_demographics.size.to_f) * 100
puts "College %: #{av_college}"

highschool_count = 0
voter_demographics.each do |individual_data|
  if individual_data[:education] == "High School"
    highschool_count += 1
  end
end
av_highschool = (highschool_count.to_f / voter_demographics.size.to_f) * 100
puts "High School %: #{av_highschool}"

no_diploma_count = 0
voter_demographics.each do |individual_data|
  if individual_data[:education] == "Did Not Complete High School"
    no_diploma_count += 1
  end
end
av_no_diploma = (no_diploma_count.to_f / voter_demographics.size.to_f) * 100
puts "Did Not Complete High School %: #{av_no_diploma}"
