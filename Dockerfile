FROM alpine

RUN apk add python2-dev git openssl-dev libxml2-dev libxslt-dev zlib libffi-dev py-pip gcc g++ --no-cache && \
    git clone https://github.com/DanMcInerney/xsscrapy.git && \   
    cd /xsscrapy && \
    export TERM=vt100 && \
    GCC=g++ && \
    pip install -r requirements.txt && \
    echo "to run ./xsscrapy.py"
WORKDIR /xsscrapy


