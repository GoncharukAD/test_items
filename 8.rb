=begin
8)	Обязательное задание

В заданиях 6 и 7 нужно предоставить либо решение на руби с использованием ActiveRecord, либо на чистом SQL. Бонусом будет наличие обоих решений
Есть таблица students с колонками
id int
name varchar created_at datetime parent_id int
a)	посчитайте количество всех студентов
b)	посчитайте количество студентов с именем Иван
c)	посчитайте количество студентов созданных после 1 сентября 2020 года
=end


#SQL

SELECT COUNT(*) FROM "students"
SELECT COUNT(*) FROM "students" WHERE name = "Иван"
SELECT COUNT(*) FROM "students" WHERE created_at = '2020-09-01'

#ActiveRecord

Student.count
Student.where(name: "Иван").count
Student.where("created_at >= '2022-12-20'").count
