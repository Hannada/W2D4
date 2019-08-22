def first_anagrams(str1, str2)
  arr = str1.split('')
  anagrams = arr.permutation.to_a 
  anagrams.include?(str2.split(''))
end
#factorial 

def second_anagram(str1, str2)
  arr1 = str1.split("") 
  arr2 = str2.split("") #linear?
  
  arr1.each do |char| #linear
    if arr2.find_index(char) != nil #linear?
      arr2.delete(char) #linear 
    end
  end
  return true if arr2.empty? #linear 
  false
end

def third_anagram?(str1, str2)

  arr1 = str1.split("").sort #linearthmic
  arr2 = str2.split("").sort

  arr1 == arr2

end

def fourth_anagram?(str1,str2)

 hashify(str1) == hashify(str2)

end

def hashify(str)

  hash = Hash.new(0) # constant
  str.each_char do |char| #linear 
    hash[char] += 1
  end
  hash
end

p first_anagrams('gizmo', 'sally')
p first_anagrams("elvis", "lives")


p second_anagram('gizmo', 'sally')
p second_anagram("elvis", "lives")

p third_anagram?('gizmo', 'sally')
p third_anagram?("elvis", "lives")

p fourth_anagram?('gizmo', 'sally')
p fourth_anagram?("elvis", "lives")