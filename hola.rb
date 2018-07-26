# puts ("Hola Mundo")
# puts 5+5

# var1 = "1"
# var2 = 5


# puts var1.to_i + var2
# puts var1 + var2.to_s


# puts pregunta = "Como es tu nombre?"
# nombre = gets
# puts "Tu nombre es " + nombre

# puts pregunta2 = "Cuantos años tienes?"
# edad = gets

# puts "Tu edad es " + edad
# 
# if edad.to_i > 18 && edad.to_i < 20 
	# puts "Ya puedes sacar cedula"
# elsif edad.to_i == 18
	# puts "Espera un día más"
# else
	# puts "Aún toca esperar"
# end
	
# pregunta = ""

# while pregunta != 'adios'

	# puts "Escribe adios para salir: "
	# pregunta = gets.chomp
	# puts pregunta

# end

# lenguajes = ['Ingles', 'Aleman', 'Ruby', 'Colombiano']
# lenguajes.each do |leng|
	# puts '!Me gusta ' + leng + '|'
	# puts '¿A ti? '
	# responde = gets.chomp
	# puts 'A mi ' + leng + 'a ti ' + responde
# end

# def funcion_prueba nombre, apellido, edad
	# puts nombre + " " + apellido + " " + edad.to_s
# end

# funcion_prueba "Diego", "Rincon", 18


# def carro modelo="Dubai"
	# puts modelo
# end

# carro
# carro "BMW"

require 'pg'

class Consdb

	 def initialize algo
	 	 puts algo
	 end
 
	 def consultar
	 	puts "consulta a la base de datos"
        con = PG::Connection.new("localhost","5432","","","Prueba_Fedesoft","postgres","andlejo2912")	 	
        var = con.exec("SELECT * FROM PERSONAS")
        var.each do |row|
 	       puts row['id'] + ' ' + row['cedula'] + ' ' + row['pnombre'] + ' ' + row['papellido']
        end
	 end

	 def insertar(did, dcedula, dpnombre, dpapellido)
	 	puts "insertando"
	 	con = PG::Connection.new("localhost","5432","","","Prueba_Fedesoft","postgres","andlejo2912")	 	
	 	con.exec "INSERT INTO PERSONAS VALUES(did,dcedula,dpnombre,dpapellido)"
 end
 
 consdb = Consdb.new(10);
 puts consdb.consultar

 puts pregunta = "Id"
 nombre = gets
 puts "Tu nombre es " + nombre

 
 # con = PG.connect :dbname => 'Prueba_Fedesoft', :user => 'postgres', :password => 'andlejo2912'

 # con = PG::Connection.new("localhost","5432","","","Prueba_Fedesoft","postgres","andlejo2912")
 # puts con

 # var = con.exec("SELECT * FROM PERSONAS")
 # var.each do |row|
 	# puts row['cedula'] + ' ' + row['pnombre']
 	# puts 'cedula','pnombre','papellido']

 # end




