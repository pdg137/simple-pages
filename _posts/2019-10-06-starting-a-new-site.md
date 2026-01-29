---
layout: post
title:  "Starting a new site"
date:   2019-10-06 13:06:00 -0700
categories:
---

***2026-01-29:** Updated for the new nix-based setup.*

## Setting up a Linux system with Nix

1. You will need a functional Linux-like system. MacOS should work
fine, but I have not tried. If you are using Windows, I recommend [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).
2. Install nix:
   * On relatively recent Linux versions, run `sudo apt install nix-bin` to get a recent enough version of nix.
   * Otherwise, follow the [official installation instructions](https://nixos.org/download/).
3. Verify that `nix --version` gives at least version 2.18.

## Cloning the repository

1. Follow instructions on GitHub to create a new repository. Do not initialize
   it with any files such as a README.
2. Clone the repository.
3. From your repository, pull in this template:
    ```
    git remote add simple-pages git@github.com:pdg137/simple-pages.git
    git pull simple-pages master
    ```

## Running the server

1. Run `nix-shell`.  It should download a bunch of stuff and then give
   you a prompt after a few minutes.
2. Run `./server`.  The server will be available at http://localhost:4000/
3. WSL users: you will need to run a browser in WSL (e.g.
   `chromium http://localhost:4000/`) or else [forward port
   4000](https://jwstanly.com/blog/article/Port+Forwarding+WSL+2+to+Your+LAN/)
   to the Windows system.

## Publishing your pages

1. Run `git push` to update your pages on GitHub.
2. In your project settings on GitHub, find the section for Pages, and set
   it to "master branch".
3. Find that section again and follow the link to your new site.

## Making changes

1. Edit files as desired.
2. Run the server to preview them. (Note that it auto-updates as you edit.)
3. Run `git commit -a`, check what appears, write a commit message, save, and exit.
4. Run `git push`.
5. After a minute, GitHub pages should be showing the updated pages.
