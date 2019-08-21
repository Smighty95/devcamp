3.times do
	|topic|
		Topic.create!(
			title: "Topic #{topic}"
		)
end

puts "3 topics created"

10.times do |x|
	Blog.create!(
		title: "My Blog Post #{x}",
		body: "It is a long established fact that a reader 
		will be distracted by the readable content of a
		page when looking at its layout. 
		The point of using Lorem Ipsum is that it
		has a more-or-less normal distribution of 
		letters, as opposed to using 'Content 
		here, content here', making it look like 
		readable English.",
		topic_id: Topic.last.id
	)
end

puts "10 blogs created"

5.times do
	|skill|
		Skill.create!(
			title: "Rails #{skill}",
			percent_initilized: 75
	)
end

puts "5 skills created"

8.times do
	|portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "It is a long established fact that
		a reader will be distracted by the readable
		content of a page when looking at its layout. 
		The point of using Lorem Ipsum is that it
		has a more-or-less normal distribution of 
		letters, as opposed to using 'Content 
		here, content here', making it look like 
		readable English.",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/300x150"
	)
end

1.times do
	|portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Angular",
		body: "It is a long established fact that
		a reader will be distracted by the readable
		content of a page when looking at its layout. 
		The point of using Lorem Ipsum is that it
		has a more-or-less normal distribution of 
		letters, as opposed to using 'Content 
		here, content here', making it look like 
		readable English.",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/300x150"
	)
end

puts "9 portfolio created"

3.times do
	|technology|
		Portfolio.last.technologies.create!(
			name: "Technology #{technology}",
			portfolio_id: Portfolio.last.id
		)
end

puts "3 technologies created"