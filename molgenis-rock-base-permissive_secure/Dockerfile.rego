package docker

default allow := false

allow if input.local

allow if {
    input.image.host == "docker.io"
}

decision := {"allow": allow}
