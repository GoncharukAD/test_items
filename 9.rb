=begin
9)	Необязательное задание, но его выполнение будет плюсом. Так же есть таблица parents (см задание 6)
id int
name varchar created_at datetime
a)	посчитайте количество студентов с родителями
b)	посчитайте количество студентов с родителями при том что имя родителя Марина
c)	посчитайте количество студентов без родителя
=end

#SQL
SELECT COUNT(*) FROM "students" WHERE "parent_id" IS NOT NULL
SELECT COUNT(*) FROM "students" INNER JOIN "parents" ON "parents"."id" = "students"."student_id" WHERE "parents"."name" = ?  [["name", "Марина"]]
SELECT COUNT(*) FROM "students" WHERE "parent_id" IS NULL


#ActiveRecord
Student.where("parent_id != 'null'").count
Student.joins(:parent).where(parents: { name: "Марина" }).count
Student.where(parent_id: nil).count
