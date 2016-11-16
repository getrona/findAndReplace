class String
  def is_upper?
    self==self.downcase
  end
  define_method (:find_and_replace) do |original, new_word|
    sentence=self.downcase
    sentence.gsub!(original.downcase,new_word)
  end
end
#   define_method (:find_and_replace) do |original, new_word|
#     sentence=self.downcase
#     sentence.gsub!(original.downcase,new_word)
#     output=[]
#     for i in 0..sentence.length do
#       if (self[i].to_s.is_upper?)
#         output.push(sentence[i])
#       else
#         output.push(sentence[i].upcase!)
#       end
#     end
#     output.join
#   end
# end

print "hello Hello hello getro".find_and_replace("hello","bye")
