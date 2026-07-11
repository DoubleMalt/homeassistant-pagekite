# Home Assistant App: Pagekite

Expose your Home Assistant instance to the internet through a [Pagekite](https://pagekite.net/) reverse tunnel.

## Configuration

| Option | Description |
| --- | --- |
| **Pagekite frontend** | Address of your Pagekite frontend server, for example `pagekite.net:443`. |
| **Kite name** | The public kite name you want to expose, for example `ha.example.com`. |
| **Secret** | Shared secret configured on your Pagekite frontend for this kite. |
| **Home Assistant port** | Local HTTPS port for Home Assistant (default `8123`). |
| **HTTP port** | Local HTTP port (default `80`), useful for certificate challenges. |
| **Enable HTTP tunnel** | Tunnel HTTP traffic to the configured HTTP port. |
| **Enable HTTPS tunnel** | Tunnel HTTPS traffic to the configured Home Assistant port. |

At least one of the HTTP or HTTPS tunnel options must be enabled.

## Notes

- This app uses host networking so it can reach Home Assistant on localhost.
- You need a Pagekite account or your own Pagekite frontend before using this app.
