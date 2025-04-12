module TP1 where
import PdePreludat

esMes :: Number -> Bool
esMes mes = mes > 0 && mes <=12

mesAnterior :: Number -> Number
mesAnterior mes 
    |mes==1 = 12
    |esMes mes = mes - 1
    

mesSiguiente :: Number -> Number
mesSiguiente mes
    |mes==12 = 1
    |esMes mes = mes + 1
    

estacion :: Number -> String
estacion = undefined