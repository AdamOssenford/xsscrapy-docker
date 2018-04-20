FROM alpine

RUN apk add python2-dev git openssl-dev libxml2-dev libxslt zlib libffi py-pip gcc --no-cache && \
    git clone https://github.com/DanMcInerney/xsscrapy.git && \   
    cd /xsscrapy && \
    export GCC=g++ && \
    pip install -r requirements.txt

ENTRYPOINT ["/xsscrapy/xsscrapy.py"]

