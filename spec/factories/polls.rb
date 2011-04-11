Factory.define :poll do |f|
  f.sequence(:title) { |i| "Poll ##{i}" }
end

Factory.define :poll_with_questions, :parent => :poll do |f|
  f.questions do |poll|
    (1..3).map { poll.questions.build }
  end
end
