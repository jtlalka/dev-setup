### Gradle

Commands:
```
gradle tasks                 -- list of tasks
gradle clean                 -- cleans build directory
gradle build                 -- build applications
gradle build -C rebuild      -- build all tasks applications
gradle <task> --rerun-tasks  -- run task with applications module
gradle <task> --continue     -- run task and continue if test fail
gradle <task> -x <task>      -- run task without subtask
gradle <task> --parallel     -- run task in parallel mode
gradle install               -- publish artefact to local repository
gradle eclipse               -- build eclipse workspace
gradle cleanEclipse          -- cleans all Eclipse files
gradle dependencies          -- dependency tree for gradle project
gradle :subProject:<task>    -- start task only for sub project
```
