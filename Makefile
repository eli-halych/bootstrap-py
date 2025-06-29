install:        ## lock deps → requirements.txt
\tpipenv requirements > requirements.txt
lint:           ## run Ruff
\tpipenv run ruff .
train:          ## start fine-tuning
\tpipenv run python train.py
