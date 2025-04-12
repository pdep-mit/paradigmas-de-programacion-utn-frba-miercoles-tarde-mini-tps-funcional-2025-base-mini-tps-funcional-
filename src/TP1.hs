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
    

multiploDe :: Number->Number->Bool
multiploDe divisor numero = numero `mod` divisor == 0

estacionMesSinCambio :: Number -> String
estacionMesSinCambio 1 = "verano"
estacionMesSinCambio 2 = "verano"
estacionMesSinCambio 4 = "otonio"
estacionMesSinCambio 5 = "otonio"
estacionMesSinCambio 7 = "invierno"
estacionMesSinCambio 8 = "invierno"
estacionMesSinCambio 10 = "primavera"
estacionMesSinCambio 11 = "primavera"

estacionMesConCambio :: Number -> String
estacionMesConCambio mes = (estacionMesSinCambio (mesAnterior mes)) ++ "/" ++  (estacionMesSinCambio (mesSiguiente mes))

estacion :: Number -> String
estacion mes 
    |multiploDe 3 mes = estacionMesConCambio mes
estacion mes = estacionMesSinCambio mes