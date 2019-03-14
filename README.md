# rustproj

## Outside container:
Build with: `just devbuild`

Dev with: `just devup` in one shell, `just devbash` in another. Uses docker-compose and volume mounts current dir.

## Inside container:

Build app: `cargo build`.

Run app: `just run`
