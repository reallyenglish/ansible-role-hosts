# ansible-role-hosts

Manages `/etc/hosts`

# Requirements

None

# Role Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `hosts_map` | dict containing mapping of hostname and IP address (see an example below)| {} |
| `hosts_enable_localhost` | if true, create an entry of `localhost` | true |
| `hosts_enable_ipv6` | if true, create an entry of IPv6 version of `localhost` | true |
| `hosts_extra_localhosts` | list of extra hostname for `127.0.0.1` when `hosts_enable_localhost` is true | `[]` |

Created by [yaml2readme.rb](https://gist.github.com/trombik/b2df709657c08d845b1d3b3916e592d3)

# Dependencies

None

# Example Playbook

```yaml
- hosts: localhost
  roles:
    - ansible-role-hosts
  vars:
    hosts_enable_localhost: true
    hosts_extra_localhosts:
      - localhost1
      - localhost2
      - buz.example.org
    hosts_map:
      "192.168.100.1":
        - foo
      "192.168.100.2":
        - bar
        - buz
```

# License

```
Copyright (c) 2016 Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```

# Author Information

Tomoyuki Sakurai <tomoyukis@reallyenglish.com>

This README was created by [ansible-role-init](https://gist.github.com/trombik/d01e280f02c78618429e334d8e4995c0)
