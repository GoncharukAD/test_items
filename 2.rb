=begin
2)	Есть массив
  arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

a)	напишите выражение, которое получает массив всех ключей
b)	напишите выражение, которое получает массив всех значений с) напишите выражение, которое получает сумму всех значений
=end

array = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

def keys(arr)
  arr_keys = []
  arr.each { |h|  arr_keys.push(h.keys) }
end

def values(arr)
  arr_values = []
  arr.each { |h|  arr_values.push(h.values) }
end

def sum(arr)
  arr_values = []
  arr.each { |h|  arr_values.push(h.values) }
  sum_arr = []
  arr_values.each { |elem| sum_arr += elem}
  sum_arr.sum
end

 # или

 def sum(arr)
  sum_arr = []
  values(arr).each { |elem| sum_arr += elem}
  puts sum_arr.sum
end
