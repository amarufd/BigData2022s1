pathMiPc <- "~/Documents/UTEM/BigData2022S1/BigData2022s1"
setwd(pathMiPc)

sumaDeDosNumeros <- 2 + 4
divisionDeDosNumeros <- 2 / 4


a <- 3
b <- 5
sumaDeDosNumeros <- a + b


variableBooleana <- TRUE
variableBooleana <- FALSE
variableBooleana <- T
variableBooleana <- F

variableBooleana <- a > b

# Suma
4 + 4

# Multiplicacion
3 * 5

# Division
4 / 6

# Elevado
2 ^ 2
3**2

# Raiz
4**1/2

# se guarda en respuesta la operacion
# 4 + 4
respuesta <- 4 + 4

# Muestra la innformacion que uno decide
print(respuesta)


# almacenando texto
respuesta <- "Que tengan un bonito descanso"
print(respuesta)

# modulo
4 %% 2 == 0




#################################################################################
###################### CONDICIONALES ############################################
a <- 0

if(a == 0){
  print("a es cero")
}else if(a %% 2 == 0){
  print("a número es par")
}else{
  print("a número es impar")
}

################################################################################
############################# LISTAS ###########################################

var_list <- list("Andres",1,T,"Ana")
print(var_list[[3]])

len_var_list <- length(var_list)
print(len_var_list)

var_list <- c(var_list, "hols")
print(var_list)

print(var_list[3])

var_list <- var_list[-2]



################################################################################
############################# LISTAS ###########################################

library(sys)

for (i in 1:10) {
  print("======= NUEVO CICLO ======")
  print(i)
  Sys.sleep(2)
  print(".")
  Sys.sleep(2)
  print(".")
  Sys.sleep(2)
  print(".")
  Sys.sleep(2)
  print(".")
  Sys.sleep(2)
  print(".")
}





# ¿Cómo muestro los elemntos de una lista con for?
var_list <- list("Andres",1,T,"Ana","Juan",F,"loco","dia bonito")

# forma Nro 1
lista_b <- list()
for( elemnto_de_lista in var_list ){
  print("======== Nueva Iteración ========")
  print(elemnto_de_lista)
  if(elemnto_de_lista == "Ana"){
    print("voy a cambiar Ana por Juan")
    lista_b <- c(lista_b,"Juan")
  }else{
    lista_b <- c(lista_b,elemnto_de_lista)
  }
  Sys.sleep(2)
}
print(lista_b)


##########################################################

# forma 2
resp_length <- length(var_list)
for (posicion in 1:resp_length) {
  print("======= NUEVA ITERACION =======")
  if(var_list[posicion] == "Ana"){
    print("voy a cambiar Ana por Juan")
    var_list[posicion] <- "Juan"
  }else if(var_list[posicion] == "Andres"){
    print("voy a cambiar Andres por Andrea")
    var_list[posicion] <- "Andrea"
  }
  print(paste("Estamos en la posicion: ",posicion," - y el valor es: ",var_list[posicion]))
  Sys.sleep(2)
}

var_list <- c(var_list,"Ana")
print(var_list)



################################################################################
############################# FUNCIONES ########################################


reemplazar <- function(vart_iter,val,reemp = ""){
  print("Init Funcion reemplazar")
  respuesta <- list()
  for (elemento in vart_iter) {
    print("============== NUEVA ITERACION ==============")
    print(paste("Estamos en el elemento:",elemento))
    if(elemento == val){
      print(paste("Se reemplaza: '",elemento,"' por '",reemp,"'",sep = ""))
      respuesta <- c(respuesta, reemp)
    }else{
      respuesta <- c(respuesta, elemento)
    }
    Sys.sleep(1)
  }
  print("Fin Funcion reemplazar")
  return(respuesta)
}

var_list <- list("Andres",1,T,"Ana","Juan",F,"loco","dia bonito")

var_list <- reemplazar(var_list,"loco","cuerdo")

var_list <- reemplazar(var_list,"Juan")

print(var_list)



################################################################################
################################# EXCEL ########################################

library(readxl)
paises <- read_excel("paises.xls", sheet = "Sheet1", col_names = FALSE)
View(paises)
