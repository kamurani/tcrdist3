FROM continuumio/miniconda3:4.8.2

RUN apt-get update && apt-get install -y procps && apt-get install nano

RUN pip install git+https://github.com/kmayerb/tcrdist3.git@0.1.1

RUN python -c "from tcrdist.setup_tests import *; download_and_extract_zip_file('dash.zip', dest = '.')"
