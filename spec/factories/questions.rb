Factory.define :question do |f|
  f.sequence(:text) { |i| "Question #{i}" }
end

Factory.define :question_with_predefined_answers, :parent => :question do |f|
  f.predefined_answers do |predefined_answers|
    (1..2).map { |i| predefined_answers.association(:predefined_answer, :text => "Answer ##{i}") }
  end
end
