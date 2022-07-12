import Lake
open System Lake DSL

package WidgetsMinimal

def tsxTarget (tsxName : String) : FileTarget :=
  let jsFile := __dir__ / s!"widget/dist/{tsxName}.js"
  let srcFiles := inputFileTarget <| __dir__ / s!"widget/src/{tsxName}.tsx"
  fileTargetWithDep jsFile srcFiles fun _srcFile => do
    proc {
      cmd := "npm"
      args := #["install"]
      cwd := some <| __dir__ / "widget"
    }
    proc {
      cmd := "npm"
      args := #["run", "build"]
      cwd := some <| __dir__ / "widget"
    }

target index : FilePath := tsxTarget "index"

@[defaultTarget]
lean_lib WidgetsMinimal