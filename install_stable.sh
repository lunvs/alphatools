conda create -n env_alphatools_stable -y python=3.5 numpy=1.11.3 pandas=0.18.1 scipy=0.17.1 libgfortran=3.0 pip
source activate env_alphatools_stable
python -m pip install -r requirements_stable.txt --no-cache-dir
python -m pip install -r requirements_blaze_stable.txt --no-cache-dir
pip install zipline==1.3.0 --no-cache-dir
pip install ipykernel --no-cache-dir
cd ..
pip install -e alphatools --no-cache-dir
python -m ipykernel install --user --name env_alphatools_stable --display-name "Python 3.5 (env_alphatools_stable)"