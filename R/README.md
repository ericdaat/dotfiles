# R

## Manage packages

List installed packages:

``` R
ip = as.data.frame(installed.packages()[,c(1,3:4)])
ip = ip[is.na(ip$Priority),1:2,drop=FALSE]
ip
```

Export packages as csv (or whatever you like):

``` R
write.csv(ip, "/tmp/packages.csv")
```
