import { cwd, argv } from "node:process";
import { copyFileSync } from "node:fs";
import { resolve } from "node:path";

// argv[0] is the path to the node executable
// argv[1] is the path to the script being executed
// argv[2] is the first argument after the script name
// argv[3] is the second argument after the script name, and so on

switch (argv[2]) {
  case "init":
    copyFileSync(
      __dirname + "/../templates/.govelte.config.mk",
      ".govelte.config.mk",
    );
  case "dir":
    console.log(resolve(__dirname, ".."));
    break;
  case "debug":
    console.log("__dirname", __dirname);
    console.log("process.cwd()", cwd());
    console.log("argv", argv);
    break;
  default:
    console.log("Unknown command");
}
