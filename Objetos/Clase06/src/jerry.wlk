import src.NoPuedoIrmeDeAventurasException.NoPuedoIrmeDeAventurasException

object jerry {
  method irseDeAventurasCon(unRick) {
    throw new NoPuedoIrmeDeAventurasException(message = "¡No puedo irme de aventuras!")
  }
}
