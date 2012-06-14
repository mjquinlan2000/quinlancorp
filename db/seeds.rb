# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all

(1..100).each do |i|
  Post.create(:title => "Title #{i}",
    :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ut elit id urna venenatis malesuada. Integer vitae risus vehicula metus lacinia egestas vitae quis nulla. Cras auctor rutrum lectus, blandit facilisis nisl consequat nec. Vestibulum imperdiet dui vitae ipsum aliquet sodales. Vivamus nec sem at sapien facilisis porttitor nec accumsan enim. Fusce nec vehicula urna. Nullam et mi justo, quis convallis lacus. Vivamus blandit mauris vel erat feugiat sed tincidunt mauris suscipit. Suspendisse ante turpis, tempus at euismod eu, blandit in augue. Donec mauris dui, ultricies id facilisis in, pharetra at erat. Mauris mi ipsum, sollicitudin sit amet pulvinar luctus, semper eget nunc. Curabitur lacinia varius sem, non gravida eros sagittis at. Curabitur lorem dui, lacinia eu congue quis, venenatis non mauris. Suspendisse potenti.",
    :author_id => i)
end
