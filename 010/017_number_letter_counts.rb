ENGLISH_VALUE = {}
%w( zero one two three four five six seven eight nine ten eleven
    twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ).each_with_index{ |word,i| ENGLISH_VALUE[word] = i }

%w( zero ten twenty thirty forty fifty sixty seventy eighty ninety ).each_with_index{ |word,i| ENGLISH_VALUE[word] = i*10 }
ENGLISH_VALUE['hundred'] = 100
%w( one thousand million billion trillion).each_with_index{ |word,i| ENGLISH_VALUE[word] = 10**(i*3) }

# puts ENGLISH_VALUE

class Integer
  def to_english_letters
    if self > 0 && self <= 20
      ENGLISH_VALUE.key(self)
    elsif self > 20 && self <= 99
      left = self - ((self / 10) * 10)
      ENGLISH_VALUE.key((self / 10) * 10) + left.to_english_letters
    elsif self % 100 == 0 && self > 99 && self < 1000
      ENGLISH_VALUE.key(self / 100) + 'hundred'
    elsif self > 100 && self < 1000
      left = self - ((self / 100) * 100)
      ENGLISH_VALUE.key(self / 100) + 'hundredand' + left.to_english_letters
    elsif self == 1000
      'onethousand'
    else
      ''
    end
  end
end

letters = 0
(1..1000).each do |x|
  letters += x.to_english_letters.length
  # puts x.to_english_letters
end

puts letters
