#!/usr/bin/env bash

# Copyright 2018 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

KUBE_ROOT=$(dirname "${BASH_SOURCE[0]}")/../..

source "${KUBE_ROOT}/cluster/common.sh"
source "${KUBE_ROOT}/hack/lib/util.sh"


function detect-project {
	echo "AKS Provider: detect-project not implemented" 1>&2
}

function detect-master {
	FQDN=$(az aks show -g "${KUBEMARK_RESOURCE_GROUP}" -n "${KUBEMARK_RESOURCE_NAME}" -query 'fqdn' -o tsv)
}