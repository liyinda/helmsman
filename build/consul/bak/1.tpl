{{ range service "consul" }}
server {{ .Name }}{{ .Address }}:{{ .Port }}{{ end }}

{{range services}}# {{.Name}}{{range service .Name}}
##{{.Address}}
##{{.Tags}}{{end}}

{{end}}


{{range services}}
Name-{{.Name}}
{{range .Tags  }}
tags-{{.}}{{end}}
{{end}}

{{range services}}
Name-{{.Name}}
{{ if in .Tags "v1" }}
# ...{{.Tags}}
{{ end }}
{{end}}
