=begin
4)	Покажите пример удаления nil значений в Ruby массиве
   [nil, 1, :foo]
=end

arr = [nil, 1, :foo]
arr.compact!
