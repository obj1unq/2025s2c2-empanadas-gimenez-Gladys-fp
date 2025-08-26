//Escribir aqui los objetos
object gimenez{
    var dinero = 300000

    method dineroDisponible(){
        return dinero
    }
    method pagarSueldo(empleado){
        dinero = dinero - empleado.sueldo()
        empleado.cobrarSueldo()
        
    }
}

object galvan{
    var dinero = 0
    var deuda = 0

    var sueldo = 15000
    method sueldo(_sueldo){ 
        sueldo = _sueldo
    } 
    method dinero(){
        return dinero
    }
    method sueldo(){
        return sueldo
    }
    method gastar(gastos){
        deuda =  deuda + gastos
    }
    method cobrarSueldo(){
        dinero = dinero + sueldo
        self.pagarDeudas()
    }
    method pagarDeudas(){
        if (dinero >= deuda){
            dinero = dinero - deuda
            deuda = 0 
        } else {
            deuda = deuda - dinero
            dinero = 0
        }
    }

}

object baigorria{
    var dinero = 0
    const precioEmpanadas = 15 
    var empanadasVendidas = 800
    var sueldo = 0

    method sueldo(){
        sueldo = precioEmpanadas * empanadasVendidas
        return sueldo 
    }    
    method venderEmpanadas(cantidad){ // cantidad de empanadas vendidas.
        empanadasVendidas = empanadasVendidas + cantidad
    }
    method cobrarSueldo(){ // Actualiza la billetera de baigorria, agrega el sueldo.
        dinero = dinero + sueldo
        empanadasVendidas = 0
        sueldo = 0
    }

}