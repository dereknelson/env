welcome to your fancy new dev machine!

# Tools
iterm2
keyboard maestro
magnet

## Shell notes

- Codex shell wrapper uses `--no-alt-screen` by default.
  Why: default alternate-screen repainting can hide earlier plan/context output from normal iTerm scrollback.
- Global npm CLIs like `codex` are expected to resolve via the `nvm alias default` Node version's `bin/` directory.
  Why: without that PATH bootstrap, commands installed with `npm i -g` can disappear after restart.


### Key

##### $  
CLI command

##### a.  
subtasks



steps:
1. $`xcode-select --install`
2. open mac app store and download xcode
    - requires an apple id [@TODO]: add link to written content about apple id requirements
        - apple id requires valid credit card
