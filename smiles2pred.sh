#!/bin/bash
# this is a super simple shell command that docker runs for get redictions

# $1 is the smiles string


cd biotransformer3.0jar


java -jar BioTransformer3*.jar -k pred -b allHuman -ismi $1 -ocsv t.csv -s 2 -cm 3 > /dev/null 2>&1


cat t.csv


# podman cmds
# podman build . -t ocbiot
# podman run --rm --cpus 4 -m 2g ocbiot "CC1(C(N2C(S1)C(C2=O)NC(=O)CC3=CC=CC=C3)C(=O)O)C"
# podman run --rm -it --entrypoint bash ocbiot