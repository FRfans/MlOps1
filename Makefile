install:
	pip install --upgrade pip &&\
    	pip install -r requirements.txt

format:
	black *.py

train:
	python train.py

eval:
	echo "## Model Metrics" > report.md
	cat ./Results/metrics.txt >> report.md

	echo '\n## Confusion Matrix Plot' >> report.md
	echo '![Confusion Matrix](./Results/model_results.png)' >> report.md

	cml comment create report.md

check:
	# Ganti dengan perintah pengecekan/test yang Anda inginkan
	echo "No tests implemented"

distcheck:
	# Ganti dengan perintah pengecekan distribusi yang Anda inginkan
	echo "No distribution checks implemented"
