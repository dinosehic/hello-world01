# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM alpine
COPY quickstart-docker/quickstart.sh /
RUN chmod +x quickstart.sh
RUN docker run --rm -v $(pwd):/app -w /app golangci/golangci-lint:v1.37.1 golangci-lint run -v
RUN golangci-lint --version
RUN golangci-lint run
CMD ["/quickstart.sh"]