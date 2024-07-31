{{- define "shared-library.keyvault" -}}
{{- range $.Values.keyvault.secrets }}
---
apiVersion: onepassword.com/v1
kind: OnePasswordItem
metadata:
  name: {{ $.Release.Name }}-{{ . }}
spec:
  itemPath: "vaults/{{ $.Values.keyvault.name }}/items/{{ . }}"
{{- end }}
{{- end }}
