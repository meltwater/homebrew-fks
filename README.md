# homebrew-fks

CLI binaries related to Kubernetes at Meltwater.

This [homebrew](https://brew.sh) tap is created for convenience. It ensures that the correct kubectl version is installed.

Current CLI binaries in this tap:

- kubectl
- kops
- helm2
- helm3
- helmfile
- sops (installed with helm3 as a dependency)
- vals (installed with helm3 as a dependency)

To install a formula run:

```
brew install meltwater/fks/<FORMULA>
```

--

If you are interested in creating your own homebrew tap you can look [here](https://docs.brew.sh/Taps), [here](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap) and [here](https://medium.com/prodopsio/creating-homebrew-taps-for-private-internal-tools-c41363d58ab0).
