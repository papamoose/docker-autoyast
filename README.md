# docker-yast
Run yast2 autoyast from a docker container. Used to verify autoyast.xml files.


## Docs
* https://doc.opensuse.org/projects/autoyast/#sec-basic-checks

## How to test

```
yast2 autoyast check-profile filename=autoinst.xml output=result.xml
yast2 autoyast check-profile run-erb=true filename=autoinst.xml.erb output=result.xml.erb
yast2 autoyast check-profile run-erb=true filename=http://192.168.1.1/tftp/suse/autoinst.xml.erb output=result.xml.erb
```

# Notes

1. import untrusted GPG key backports OBS?
2. import untrusted gpg key SUSE Package Signing Key
3. Find the first disk and partition that instead of picking /dev/vda
  - attempt to pick first disk in sorted size order (smallest)
  - removed addon repositories
4. partition.first ends up with zram1 as the device
5. trying .last to get a real drive though this wont work in all scenarious
  - It says it can't find sda which is odd cause that's from the list it came up with.
