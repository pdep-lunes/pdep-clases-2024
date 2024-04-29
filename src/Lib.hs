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

bolaEspinosa :: PoderBasico
bolaEspinosa unPersonaje = unPersonaje { cantidadDeVida = max 0 (cantidadDeVida unPersonaje - 1000) }

-- Si quiero establecer un techo uso min
-- Si quiero establecer un piso uso max

espina :: Personaje
espina = UnPersonaje "Espina" bolaEspinosa "Granada de espinas" True 4800

{-
Repositorio: "Album de fotos"
Repositorio remoto: "Copia del album en la nube"
Repositorio local:  "Copia del album en mi compu"

git status: "Ver el estado de la escena"
git add <path del archivo>: "Che archivo, ¡metete en la escena para la foto!"
git commit -m "Un nombre expresivo": "Sacar y nombrar la foto"
git push origin HEAD: "Subir los cambios del album en mi compu a la nube"
git pull: "Bajar los cambios del album en la nube a mi compu"
git log: "Mostrar el listado de fotos"
-}
