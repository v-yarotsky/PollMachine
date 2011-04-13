Factory.define :predefined_answer do |f|
  f.sequence(:text) { |i| "Answer ##{i}" }
end