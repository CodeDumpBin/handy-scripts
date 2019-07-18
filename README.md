#Handy Scripts

A collection of handy scripts and commands for developers

##Command to update outdated NPM packages in you project

```console
npm outdated  | awk 'FNR > 1 {print $1}' | xargs npm install
```
