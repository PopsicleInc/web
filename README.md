<p align="center">
  <a aria-label="popsicle logo" href="https://www.popsicle.works">
    <img src="https://cdn.discordapp.com/attachments/800931794551439431/816790388270301274/7f86984b7a5f2cb4903a8ccab5c19d25.gif" width="420" />
  </a>
</p>

<p align="center">
  <em>Popsicle Discord Bot</em>
</p>

<p align="center">
  <a
    href="https://www.popsicle.works/docs/"
  >Wiki</a>
  |
  <a
    href="#"
  >Discord (Coming Soon)</a>
</p>

<p align="center">
  Popsicle is a multifunction bot that hangs around in Discord.
</p>

<p align="center">
  <a href="https://www.popsicle.works/">Popsicle</a>
</p>

<hr>

# Popsicle Web Services

This monorepo contains the web services and documentation for Popsicle Discord Bot.

## Overview

- `content/` Wiki documentation for Popsicle in Markdown format.
- `layout/` Homepage frontend.
- `config/` [Doks](https://doks.netlify.app/) theming config for the https://www.popsicle.works site.
- `functions/` Backend API for web API and etc.

## Frontend Development

To work on the frontend, you mostly only need to focus on the `config/` and `layout/` directory. Run `npm` commands in root directory such as `npm run start`.

The only files that the frontend need that _are not_ in that directory are `content/` which it uses to for the https://www.popsicle.works/docs/ pages.

## Backend/Full Stack Development

When working on the backend, the root of the repository is where you need to be.

The frontend, by default, only uses the live API. To change this you must edit any URLs from `https://www.popsicle.works/...` to `http://localhost:1313/...` on `config/production/config.toml` files.

You can run the following command to get a minimal development environment ready:

```
docker run popsicle-website
```

## Deployment

The frontend is deployed directly to [Vercel](https://vercel.com) from the `master` branch.

The backend is deployed to a server from the `master` branch using the `.github/workflows/docker.yml` file.
