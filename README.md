# PowerScripts
Useful PowerShell scripts

## git-ignore

Git ignore is scripth that downloads .gitignore template from Github

**Example**
```
git-ignore VisualStudio
```
will download contents of the file `https://raw.githubusercontent.com/github/gitignore/master/VisualStudio.gitignore` and save it to file `.gitignore`

**Possible problems**
Names of templates are case sensitive so you should know the name before downloading.


## RNA (Restart Network Adapter)

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
