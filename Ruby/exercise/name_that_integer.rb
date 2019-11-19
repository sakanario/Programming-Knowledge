# %w[ant bear cat].all? { |word| word.length >= 3 }
#
# word =lambda { |word| word.length >= 3 }
# %w[ant bear cat].all? word

lam1 = lambda {|x| x > 9}
lam2 = lambda {|x| x**0.5 % 1 == 0}
pro = Proc.new {|x| x > 9}

# pro = Proc.new
def check(block  = lambda {|x| x > 0} , block1  = lambda {|x| x > 0})
  cek = false
  x = 0
  until cek == true
    x+=1
    if ( block.call(x) && block1.call(x))
      cek = true
      return x
    end
  end
end
puts check #works
puts check(lam1) #works
puts check(lam1,lam2)
