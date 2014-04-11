# Chef Playground

This is basically a normal chef repository. I created it mainly for testing and
learning purposes.

It's intended to be used with chef-solo and vagrant. For encrypted data bags I
installed [knife-solo][1] and [knife-solo\_data\_bag][2].

There is already an encrypted data bag and you can show or edit it with these
commands:

    $ knife solo data bag show mysql passwords --secret topsecret
    $ knife solo data bag edit mysql passwords --secret topsecret

I'm passing the secret in directly but there is also a secret file
(`encrypted_data_bag_secret`) with the same secret. To use it you have to use
`--secret-file` instead of `--secret` with the knife command and then load the
secret file whereever you need it (recipes, roles, environments, ...).

[1]: https://github.com/matschaffer/knife-solo
[2]: https://github.com/thbishop/knife-solo_data_bag