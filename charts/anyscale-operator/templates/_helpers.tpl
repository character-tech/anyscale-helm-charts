{{/*
Check if any external secret is enabled for anyscale-cli-token
*/}}
{{- define "anyscale.externalSecretEnabled" -}}
{{- range .Values.externalSecrets -}}
{{- if and .enabled (eq .name "anyscale-cli-token") -}}
true
{{- end -}}
{{- end -}}
{{- end -}}