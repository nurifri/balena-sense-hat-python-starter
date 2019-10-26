from PIL import Image
import numpy as np

pkmn = np.array(Image.open('img/pkmn.png'))

def getCharmander():
    return pkmn[0:8,48:56,:].reshape(64, 3).tolist()
