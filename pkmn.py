from skimage import io
pkmn = io.imread('img/pkmn.png')

def getCharmander():
    return pkmn[0:8,48:56,:].reshape(64, 3).tolist()