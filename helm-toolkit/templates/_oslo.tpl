# Copyright 2017 The Openstack-Helm Authors.
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

#-----------------------------------------------
# oslo settings we will dynamically manufacture
#-----------------------------------------------

{{- define "helm-toolkit.oslo_values_setup" -}}

# generate database uri and set .Values.conf.oslo.db.connection
{{- if empty .Values.conf.database.oslo.db.connection -}}
{{- tuple "oslo.db" "internal" "mysql" . | include "helm-toolkit.authenticated_endpoint_uri_lookup" | set .Values.conf.database.oslo.db "connection" -}}
{{- end -}}

# generate amqp transport uri and set .Values.endpoints.messaging
{{- if empty .Values.conf.default.oslo.messaging.transport_url -}}
{{- tuple "oslo.messaging" "internal" "amqp" . | include "helm-toolkit.authenticated_endpoint_uri_lookup" | set .Values.conf.default.oslo.messaging "transport_url" -}}
{{- end -}}

# generate memcache host:port and set .Values.endpoints.memcache
{{- if empty .Values.conf.cache.oslo.cache -}}
{{- tuple "oslo.cache" "internal" "memcache" . | include "helm-toolkit.hostname_endpoint_uri_lookup" | set .Values.conf.cache.oslo.cache "memcache_servers" -}}
{{- end -}}

{{- end -}}
