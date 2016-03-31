if Rails.env.production?

	$redis = Redis.new(url: ENV["redis://h:pa2t7egm1sm24i40f3t4ravqou9@ec2-54-235-164-4.compute-1.amazonaws.com:18329"])

else

	$redis = Redis.new(:host => 'localhost', :port => 6379)

end