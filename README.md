
Two vms: master, agent
```
$ vagrant up
$ vagrant ssh master
```
Follow post installation steps for master in  `~/files/post_install` file

```
$ vagrant ssh agent
$ sudo puppet agent -t
```

