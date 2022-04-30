content = ["面白い", "普通", "つまらない"]

3.times do |i|
  Book.create!(title: "本 #{i + 1}", body: "内容：#{content[i]}")
end