# Ansible Role: shairport-sync

An Ansible role that installs [shairport-sync](https://github.com/mikebrady/shairport-sync) on Ubuntu/Debian.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

You have the choice to either customize the whole config as a string containing your shairport-sync configuration:
```
shairportsync_config: ''
```
... or you can just use some variables from the configuration:
```
log_verbosity: 0
speakername: "{{ inventory_hostname }} AirSound"
output_backend: alsa
ignore_volume_control: "yes"
alac_decoder: apple
alsa_device: sysdefault
```
If using sysdefault als ALSA device there might be no output from shairport-sync if at the same time another app is using playback. But as soon as the other app stops, playback from shairport-sync should sound.

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```
- hosts: servers
  roles:
    - role: shairport-sync
      shairportsync_config: |
        general = {
          name = "Maestro";
          volume_range_db = 30;
        };
```

## License

ISC

## Author Information

Many thanks to:

* [Bob Zoller](https://github.com/bobzoller) who created this role
* [Izaak Schroeder](https://github.com/izaakschroeder/ws2811/tree/master/ansible/roles/shairport-sync)
