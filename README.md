# homeassistant-pagekite

Home Assistant app repository that exposes Home Assistant through a [Pagekite](https://pagekite.net/) reverse tunnel.

## Installation

1. Open **Settings → Apps → App store**.
2. Click the three-dot menu (top right) and choose **Repositories**.
3. Add this repository URL:

   ```
   https://codeberg.org/DoubleMalt/homeassistant-pagekite
   ```

   Or use this one-click link (requires [My Home Assistant](https://my.home-assistant.io/)):

   [![Open your Home Assistant instance and show the add repository dialog.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fcodeberg.org%2FDoubleMalt%2Fhomeassistant-pagekite)

4. Install the **Pagekite** app from the store.
5. Configure your Pagekite frontend, kite name, and secret in the app options.

## Configuration

| Option | Description |
| --- | --- |
| **Pagekite frontend** | Your Pagekite frontend server, for example `pagekite.net:443`. |
| **Kite name** | Public kite name to expose, for example `ha.example.com`. |
| **Secret** | Shared secret for your kite. |
| **Home Assistant port** | Local HTTPS port (default `8123`). |
| **HTTP port** | Local HTTP port (default `80`). |
| **Enable HTTP tunnel** | Tunnel HTTP traffic. |
| **Enable HTTPS tunnel** | Tunnel HTTPS traffic. |

See [pagekite/DOCS.md](pagekite/DOCS.md) for more details.

## Requirements

- Home Assistant with Supervisor (Home Assistant OS or Supervised)
- A Pagekite account or self-hosted Pagekite frontend

## License

See [LICENSE](LICENSE).
