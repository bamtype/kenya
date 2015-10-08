complete_name_list = [
  [ "Jerry", "Garcia" ],
  [ "French", "Montana"],
  [ "Kamal", "Fareed" ],
  [ "Nasir", "Jones" ]
  [ "Chris", "Cornell" ],
  [ "Eric", "Wright"],
  [ "Chuck", "D" ],
  [ "Clifford", "Smith" ]
  [ "Dennis", "Coles" ],
  [ "Kris", "Parker"],
  [ "Sean", "Price" ],
  [ "Rakim", "Allah" ]
]

complete_name_list.each do |fname, lname|
  Fullname.create( fname: fname, lname: lname )
end

