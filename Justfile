set dotenv-load

setup-book:
	python -m venv .venv
	.venv/bin/python -m pip install --upgrade pip
	.venv/bin/python -m pip install -r requirements.txt
	.venv/bin/jupyter nbextension install --py --user hide_code
	.venv/bin/jupyter nbextension enable --py --user hide_code
	.venv/bin/jupyter serverextension enable --py --user hide_code
	#.venv/bin/jupyter contrib nbextension install --user
	#.venv/bin/jupyter nbextension enable splitcell/splitcell