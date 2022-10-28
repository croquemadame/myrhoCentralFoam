#!/bin/bash

source $WM_PROJECT_DIR/bin/tools/RunFunctions

foamCleanTuturials
touch monopole2D.foam
restore0Dir
runApplication gmshToFoam cylinderSourceOPT.msh
runApplication changeDictionary
runApplication decomposePar
runParallel renumberMesh -overwrite
runParallel $(getApplication)
