//Escribir aqui los objetos
object gimenez{
    var dinero = 300000
    method fondo(){
        return dinero
    }

    method pagarSueldo(empleado){
        dinero = dinero - empleado.sueldo()
        empleado.cobrarSueldo(empleado.sueldo())
        
    }
}

object galvan{
    var dinero = 0
    var sueldo = 15000

    method dinero(){
        return dinero
    }
    method cobrarSueldo(pago){
        dinero = dinero + pago
    }
    method sueldo(_sueldo){ //cambiio de sueldo de Galvan
        sueldo = _sueldo
    }
    method sueldo(){
        return sueldo
    }

}

object baigorria{
    var dinero = 0
    var montoPorEmpanada = 15 
    var cantidadEmpanadasVendidas = 800
    var sueldo = self.cantidadEmpanadasVendidas() * self.montoPorEmpanada()
    
    method cantidadEmpanadasVendidas(){
        return cantidadEmpanadasVendidas
    }
    method montoPorEmpanada() {
        return montoPorEmpanada
      
    }
    method vender(cantidad){ // cantidade de empanadas vendidas.
        cantidadEmpanadasVendidas = cantidadEmpanadasVendidas + cantidad
    }
    method sueldo(){
       return sueldo 
    }    
    method cobrarSueldo(pago){
        dinero = dinero + pago
    }

}