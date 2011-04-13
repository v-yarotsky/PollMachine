Factory.define :poll do |f|
  f.sequence(:title) { |i| "Poll ##{i}" }
end

Factory.define :poll_with_questions, :parent => :poll do |f|
  f.questions { |questions| (1..3).map { |i| questions.association(:question, :text => "Question ##{i}") } }
end

Factory.define :poll_with_questions_and_answers, :parent => :poll do |f|
  f.questions { |questions| (1..3).map { |i| questions.association(:question_with_predefined_answers, :text => "Question ##{i}") } }
end
