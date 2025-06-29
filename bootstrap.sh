git init bootstrap_py && cd bootstrap_py && \
pipenv --python 3.11 && \
pipenv install transformers peft datasets bitsandbytes && \
pipenv install --dev ruff black pytest && \
printf "[tool.ruff]\nline-length = 100\n" > pyproject.toml && \
cat <<'EOF' > Makefile
install:        ## lock deps → requirements.txt
\tpipenv requirements > requirements.txt
lint:           ## run Ruff
\tpipenv run ruff .
train:          ## start fine-tuning
\tpipenv run python train.py
EOF
git add . && git commit -m "Bootstrap a project"

