object tom {
  var energia = 50
  var distanciaRecorrida = 0
  var ultimoRatonComido = null
  
  method getEnergia() = energia
  
  method getDistanciaRecorrida() = distanciaRecorrida
  
  method getUltimoRatonComido() = ultimoRatonComido
  
  method comerRaton(unRaton) {
    energia += self.energiaRecuperadaPorComer(unRaton)
    ultimoRatonComido = unRaton
  }
  
  method correr_Metros(metros) {
    energia = self.energiaRestanteSiCorre(metros)
    distanciaRecorrida += metros
  }
  
  method calcularVelocidadMaxima() = 5 + (energia / 10)
  
  method puedeCazar(distancia) = self.energiaRestanteSiCorre(distancia) >= 0
  
  method cazarUnRaton(unRaton, unaDistancia) {
    if (self.puedeCazar(unaDistancia)) {
      self.correr_Metros(unaDistancia)
      self.comerRaton(unRaton)
    }
  }
  
  // Auxiliares -------------------
  method energiaRestanteSiCorre(metros) = energia - self.energiaPerdida(metros)
  
  method energiaRecuperadaPorComer(unRaton) = unRaton.getPeso() + 12
  
  method energiaPerdida(metros) = metros / 2
}