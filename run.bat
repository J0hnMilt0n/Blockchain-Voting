@echo off

:: Run orderer.py in the background
start python bcb_server/orderer.py

:: Run certificate_authority.py in the background
start python bcb_server/certificate_authority.py --orderer 127.0.0.1

:: Run peer.py in the background
start python bcb_server/peer.py --orderer 127.0.0.1 --ca 127.0.0.1

:: Run vosy.py in the background
start python vosy_app/vosy.py --host 127.0.0.1

echo All scripts are running in the background.
pause