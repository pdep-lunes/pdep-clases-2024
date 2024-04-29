import Text.Show.Functions

data Personaje = UnPersonaje {
  nombre           :: String,
  poderBasico      :: PoderBasico,
  superPoder       :: SuperPoder,
  superPoderActivo :: Bool,
  cantidadDeVida   :: Int
} deriving Show

type PoderBasico = Personaje -> Personaje
type SuperPoder = String
