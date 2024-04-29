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
FROM occlum-he-base

ENV FLASK_PROXY_PORT 8080

### Add source file(s)
ADD print_json.c /root/occlum/demos/hello_c
ADD exec /action/exec

RUN cd /root/occlum/demos/hello_c \
  && occlum-gcc -o hello_world print_json.c \
  && mkdir occlum_instance \
  && cd occlum_instance \
  && occlum init \
  && cp ../hello_world image/bin/ \
  && occlum build

WORKDIR /actionProxy

CMD ["python", "-u", "actionproxy.py"]
