Demo how configuration and file updates for a Habitat service can work.

NB: for `hab config apply ...`, the version must be incremented, otherwise the
change will be silently ignored. Watch `journalctl -u hab-sup -f` to see if the
supervisor reloads the config / process.

### Configuration updates

#### Via stdin

```
echo 'addr="localhost:9988"' | hab config apply demo-service.default 3
```

#### From .toml file

```
hab config apply demo-service.default 4 my-config.toml
```

### File updates

```
hab file upload demo-service.default 1 message.txt
echo 'message-file="files/message.txt"' | hab config apply demo-service.default 11
```
