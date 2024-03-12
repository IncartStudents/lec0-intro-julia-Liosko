# переписать ниже примеры из первого часа из видеолекции: 
println("hello")

my_answer = 42
typeof(my_answer)
my_pi = 3.14
typeof(my_pi)

#comment

#=
Комментарий на 
несколько
строк
=#

#создание строк 
s1 = "rgh"
s2 = """gghh"""
#=тройные кавычки нужны для того, чтобы внутри фразы 
использовать двойные кавычки
=#
s3 = """hjh   "error"  kjj"""

#добавление знака $ чтобы добавлять или вычислять переменные внутри строки
name = "Jane"
num_fingers = 10
num_toes = 10
println("fghj $name")
println("rtfvhjh $num_fingers hjkl;  $(num_fingers + num_toes)")

#объединение строк
#1 способ
string("gvhbjki", "fdghjk")
string("gvhbjki", 10, "fdghjk")

#2 способ
s1 = "rghfs"
s2 = "vbghffdsf"
s1*s2

#3 способ - интерполяция строк
"$s1$s2"

# Тема 3. Структуры данных
myphonebook = Dict("Jenny" => "4567890", "rfghjk" => "4567890")
myphonebook["Kramer"] = "555-tyui" #добавление

myphonebook

myphonebook["Kramer"]

pop!(myphonebook, "Kramer")
#нельзя индексировать

#Кортежи
myfavouriteanimals = ("fghj", "rtyui", "dfghj")
#кортежи можно индексировать в отличие от словарей
myfavouriteanimals[1]
#но поменять содержимое кортежа нельзя

#Массивы данных
myfriends = ["Ted", "Roi", "Bear"]# массив строк
fibonacci = [1, 1, 2]# массив чисел
mix = [1,2,"fghjk"]#тип массива any
myfriends[1]#можно индексировать
myfriends[1] = "sdf"#можно обновлять

# добавление элементов в массив push!
push!(fibonacci, 21)

#удаление элементов в массиве pop!
pop!(fibonacci)#удаляет последнее зн-е

#многомерные Массивы
favourites = [["dfgh", "dfghj", "dfghj"],["ghjk", "fhgjk", "jhkjk"]]
numbers = [[1, 2, 3],[3, 2, 3],[2,3,4,5,6,67]]#могут иметь переменную дину

rand(4,3)
rand(4,3,2)#двухмерный массив

#Циклы
#whie
n = 0
while n < 10
    n += 1
    println(n)
end

myfriends = ["Ted", "Roi", "fdgh","drftgy"]
i = 1
while i <= length(myfriends)
    friend = myfriends[i]
    println("Hi, $friend, it's great to see you.")
    i += 1
end

#for
for n in 1:10
    println(n)
end

myfriends = ["Ted", "Roi", "fdgh","drftgy"]
for friend in myfriends
    println("Hi, $friend, it's great to see you.")
end

for n = 1:10
    println(n)
end
#3 способа создания таблиц сложения
m, n = 5, 5
A = zeros(m, n)#нулевая матрица

for i in 1:m
    for j in 1:n
        A[i, j] = i + j
    end
end
A
#сокращенный вид
B = zeros(m, n)
for i in 1:m, j in 1:n#двойной цикл for
    B[i, j] = i + j
end
B

C = [i + j for i in 1:m, j in 1:n]#не надо инициализировать вначале

for n in 1:10
    A = [i + j for i in 1:n, j in 1:n]
    display(A)
end

#Условные выражения
x = 5
y = 5

if x > y
    println("$x is larger than $y")
elseif x < y
    println("$y is larger than $x")
else
    println("$x and $y are equal!")
end

if x > y
    x
else
    y
end

#то же самое
(x > y) ? x : y #=до вопроса условие, до двоеточия 
что выполняется если условие верно, 
после двоеточия в противном случае=#

(x > y) && println("$x is large than $y")

#Функции 3 способа написания
#1
function sayhi(name)
    println("Hi, $name, fghjk")
end

function f(x)
    x^2
end

#вызов ф-ций
sayhi("fcgvhuji")
f(912)

#2
#объявлении ф-ции в одной строке
sayhi2(name) = println("Hi, $name, jnkml")
f2(x) = x^2
sayhi2("fadad")
f2(111)

#3
sayhi3 = name -> println("Hi $name")
f3 = x -> x^2
sayhi3("fadad")
f3(111)

A = rand(3, 3)
A
f(A)#с матрицей тоже работает

v = rand(3)#вектор 
f(v)#вектор нельзя переовать в функцию

#Мутирующие и немутирующие ф-ции
#Мутирующие - могут изменять входные данные, не мутирующие - нет
v = [3, 5, 2]
sort(v)# не меняем v
v

sort!(v)# меняем v
v

#Вещание f.() - расчленение, к каждому объекту
A = [i + 3*j for j in 0:2, i in 1:3]
f(A)
B = f.(A)

v = [1, 2, 3]# к вектору можно применить ф-цию f.()
f.(v)

#Packages
add Example#добавление пакета
using Example#использование пакета
^C

add Colors
^C
using Colors
palette = distinguishable_colors(100)

rand(palette, 3, 3) #матрица цветов 3 на 3

#Графики
add Plots
using Plots

x = -3:0.1:3
f(x) = x^2
y = f.(x)
gr()#построение графиков
plot(x, y, label = "line")
scatter!(x, y, label = "points")

plotlyjs()
plot(x, y, label = "line")
scatter!(x, y, label = "points")

globaltemperatures = [14.4, 14.5, 14.8, 15.2, 15.5, 15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17]
plot(numpirates, globaltemperatures, legend = false)
scatter!(numpirates, globaltemperatures, legend = false)

xflip!()

xlabel!("Number of Pirates")
ylabel!("Global Temperatures (C)")
title!("Influence of pirate populatuin on global warming")

p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
plot(p1, p2, p3, p4, layout = (2, 2), legend = false)#4 графика
