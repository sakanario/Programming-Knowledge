def introduction(a,*b)
  print "#{a} is created by "
  b.each do |b|
    print "#{b} "
  end
end

introduction("Ruby","Yukihiro","Matsumoto")
