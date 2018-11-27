# PowerScripts
Useful PowerShell scripts

##RNA (Restart Network Adapter)

**How to use**
```
rna -ti 10 -adapterName "mreza"
```
**rna** - name of PowerSHell script

**-ti** - how many seconds to wait before enabling adapter again (default 5)

**-adapterName** - name of your network adapter (default "mreza")

**You can call this script with default parameters**
```
rna
```
if you need to change default parameters edit **param** section in rna.ps1 file
