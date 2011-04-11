Factory.define :question do |f|
  f.sequence(:text) { |i| "Question #{i}" }
end