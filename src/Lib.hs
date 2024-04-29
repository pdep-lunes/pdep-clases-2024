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
