# ViperTabBarSample

### Carthage

```sh
carthage update --platform iOS
```

### R.swift

[R.swift#manually](https://github.com/mac-cain13/R.swift#manually)

1.  Add the [R.swift.Library](https://github.com/mac-cain13/R.swift.Library#Installation) to your project
1.  [Download](https://github.com/mac-cain13/R.swift/releases) a R.swift release, unzip it and put it into your source root directory
1.  In Xcode: Click on your project in the file list, choose your target under `TARGETS`, click the `Build Phases` tab and add a `New Run Script Phase` by clicking the little plus icon in the top left
1.  Drag the new `Run Script` phase **above** the `Compile Sources` phase, expand it and paste the following script:

    ```
    "$SRCROOT/rswift" generate "$SRCROOT/R.generated.swift"
    ```

1.  Add `$TEMP_DIR/rswift-lastrun` to the "Input Files" and `$SRCROOT/R.generated.swift` to the "Output Files" of the Build Phase
1.  Build your project, in Finder you will now see a `R.generated.swift` in the `$SRCROOT`-folder, drag the `R.generated.swift` files into your project and **uncheck** `Copy items if needed`

_Screenshot of the Build Phase can be found [here](Documentation/Images/BuildPhaseExample.png)_
