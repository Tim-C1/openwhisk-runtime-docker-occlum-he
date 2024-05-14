#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Dockerfile for example whisk docker action
FROM leave011/openwhisk-test:latest

ENV FLASK_PROXY_PORT 8080
ENV SGX_MODE "HYPER"

RUN mkdir /root/occlum/demos/benchmark

ADD exec /action/exec

ADD python/bfs /root/occlum/demos/python/benchmark/bfs
# ADD python/compress /root/occlum/demos/python/benchmark/compress
ADD python/dynamic-html /root/occlum/demos/python/benchmark/dynamic-html
ADD python/mst /root/occlum/demos/python/benchmark/mst
ADD python/dfs /root/occlum/demos/python/benchmark/dfs
ADD python/pagerank /root/occlum/demos/python/benchmark/pagerank

WORKDIR /root/occlum/demos/python/benchmark/bfs
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash ./Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda 
RUN ./miniconda/bin/conda create --prefix ./python-occlum -y python=3.8.10 networkx

# WORKDIR /root/occlum/demos/python/benchmark/compress
# RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# RUN bash ./Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda 
# RUN ./miniconda/bin/conda create --prefix ./python-occlum -y python=3.8.10 minio

WORKDIR /root/occlum/demos/python/benchmark/dynamic-html
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash ./Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda 
RUN ./miniconda/bin/conda create --prefix ./python-occlum -y python=3.8.10 jinja2

WORKDIR /root/occlum/demos/python/benchmark/mst
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash ./Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda 
RUN ./miniconda/bin/conda create --prefix ./python-occlum -y python=3.8.10 networkx

WORKDIR /root/occlum/demos/python/benchmark/dfs
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash ./Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda 
RUN ./miniconda/bin/conda create --prefix ./python-occlum -y python=3.8.10 networkx

WORKDIR /root/occlum/demos/python/benchmark/pagerank
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash ./Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda 
RUN ./miniconda/bin/conda create --prefix ./python-occlum -y python=3.8.10 networkx scipy

WORKDIR /actionProxy

CMD ["python", "-u", "actionproxy.py"]
