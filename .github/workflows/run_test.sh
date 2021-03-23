#!/usr/bin/env bash
export OMP_NUM_THREADS=1
export PYTHONPATH=$(pwd):$(pwd)/pyscf:$PYTHONPATH
echo $PYTHONPATH

cat "jaxnumpy = True" >> $HOME/.pyscf_conf.py
pytest
