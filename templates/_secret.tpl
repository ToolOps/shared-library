{{- define "shared-library.secret" -}}
apiVersion: v1
kind: Secret
metadata:
  name: {{ .Release.Name }}-secret
type: Opaque
stringData: {{- toYaml .Values.secrets | nindent 2 -}}
{{- end -}}