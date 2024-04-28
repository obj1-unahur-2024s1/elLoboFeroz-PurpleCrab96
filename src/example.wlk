object lobo {
	var pesoLobo = 10
	var saludable = false
	
	method estaSaludable(){
		saludable = (20 < pesoLobo) && (pesoLobo < 150)
		return saludable
		}
		
	method comer(comida){
		pesoLobo = pesoLobo + (comida.peso()*0.10)
	}
	
	method correr(){
		pesoLobo = pesoLobo - 1
	}
	
	method crisis(){
		pesoLobo = 10
	}
	
	method peso(){
		return pesoLobo
	}
	
	method soplar(ocupante){
		pesoLobo = 0.max(pesoLobo - ocupante.resistencia())
	}
}

object caperusita{
	var peso = 60
	var manzanas = 6
	var casa = casaDePaja
	
	method peso(){
		return peso + (manzanas * 0.2)
	}
	
	method perderManzana(){
		manzanas = manzanas-1
	}
	
	method vivirEn(tipoDeCasa){
		casa = tipoDeCasa
	}
	
	method resistencia(){
		return peso + casa.resistencia()
	}
}

object abuelita{
	var peso = 50
	var casa = casaDeMadera
	
	method peso(){
		return peso
	}
	
	method vivirEn(tipoDeCasa){
		casa = tipoDeCasa
	}
	
	method resistencia(){
		return peso + casa.resistencia()
	}
}

object chanchito{
	var peso = 60
	var casa = casaDeLadrillo
	
	method peso(){
		return peso
	}
	
	method viveEn(){
		return casa	
	}
	
	method vivirEn(tipoDeCasa){
		casa = tipoDeCasa
	}
	
	method resistencia(){
		return peso + casa.resistencia()
	}
}

object casaDePaja{
	var resistencia = 0
	
	method resistencia(){
		return resistencia
	}
}

object casaDeMadera{
	var resistencia = 5
	
	method resistencia(){
		return resistencia
	}
}

object casaDeLadrillo{
	var resistencia = 0
	var cantidadDeLadrillos = 10
	

	method resistencia(){
		return cantidadDeLadrillos * 2
	}
}