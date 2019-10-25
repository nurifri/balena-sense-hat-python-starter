from sense_hat import SenseHat
import time
import pkmn

sense = SenseHat()

charmander = pkmn.getCharmander()
sense.set_pixels(charmander)
