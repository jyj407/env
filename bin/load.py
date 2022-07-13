import os
import numpy as np

data = np.load('lenet_bcm_data_1.npz', allow_pickle=True)
for fname in data['data'].item():
    #print(fname)
    if fname.startswith('e22'):
        infeed = data['data'].item()[fname].flatten()
print(infeed)
infeed.tofile('infeed.bin')
#infeedFile = open('infeed.txt', 'w')
#for row in infeed:
#np.savetxt('infeed.txt', infeed)
#infeedFile.close()
