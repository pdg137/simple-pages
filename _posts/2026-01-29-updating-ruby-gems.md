---
layout: post
title:  "(Technical) Updating ruby gems"
date:   2026-01-29 09:55:00 -0800
categories:
---

This is a technical thing that you should not have to do during normal
use. It might be of interest if you want to update the GitHub pages /
Jekyll software to a later version or experiment with extensions.

Start by making modifications to `Gemfile` as desired.

Then enter a special environment designed just for running bundler:

```sh
nix-shell -A bundler
```

From here you can run various commands:

```
# rewrite Gemfile.lock, applying any changes to Gemfile
bundle lock

# update gems to latest versions
bundle update

# update just one gem
bundle update some-gem
```

Notes:

* The only platform in Gemfile.lock should be "ruby". Remove the
  others if they show up.
* After any changes, make sure to remove the hash from `our_gemset.nix`
  before running `nix-shell` again.