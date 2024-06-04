<!-- markdownlint-disable -->
<p align="center">
    <a href="https://github.com/DevelopersToolbox/">
        <img src="https://cdn.wolfsoftware.com/assets/images/github/organisations/developerstoolbox/black-and-white-circle-256.png" alt="DevelopersToolbox logo" />
    </a>
    <br />
    <a href="https://github.com/DevelopersToolbox/bash-spinner/actions/workflows/cicd.yml">
        <img src="https://img.shields.io/github/actions/workflow/status/DevelopersToolbox/bash-spinner/cicd.yml?branch=master&label=build%20status&style=for-the-badge" alt="Github Build Status" />
    </a>
    <a href="https://github.com/DevelopersToolbox/bash-spinner/blob/master/LICENSE.md">
        <img src="https://img.shields.io/github/license/DevelopersToolbox/bash-spinner?color=blue&label=License&style=for-the-badge" alt="License">
    </a>
    <a href="https://github.com/DevelopersToolbox/bash-spinner">
        <img src="https://img.shields.io/github/created-at/DevelopersToolbox/bash-spinner?color=blue&label=Created&style=for-the-badge" alt="Created">
    </a>
    <br />
    <a href="https://github.com/DevelopersToolbox/bash-spinner/releases/latest">
        <img src="https://img.shields.io/github/v/release/DevelopersToolbox/bash-spinner?color=blue&label=Latest%20Release&style=for-the-badge" alt="Release">
    </a>
    <a href="https://github.com/DevelopersToolbox/bash-spinner/releases/latest">
        <img src="https://img.shields.io/github/release-date/DevelopersToolbox/bash-spinner?color=blue&label=Released&style=for-the-badge" alt="Released">
    </a>
    <a href="https://github.com/DevelopersToolbox/bash-spinner/releases/latest">
        <img src="https://img.shields.io/github/commits-since/DevelopersToolbox/bash-spinner/latest.svg?color=blue&style=for-the-badge" alt="Commits since release">
    </a>
    <br />
    <a href="https://github.com/DevelopersToolbox/bash-spinner/blob/master/.github/CODE_OF_CONDUCT.md">
        <img src="https://img.shields.io/badge/Code%20of%20Conduct-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/DevelopersToolbox/bash-spinner/blob/master/.github/CONTRIBUTING.md">
        <img src="https://img.shields.io/badge/Contributing-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/DevelopersToolbox/bash-spinner/blob/master/.github/SECURITY.md">
        <img src="https://img.shields.io/badge/Report%20Security%20Concern-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/DevelopersToolbox/bash-spinner/issues">
        <img src="https://img.shields.io/badge/Get%20Support-blue?style=for-the-badge" />
    </a>
</p>

## Overview

Display a small progress spinner in bash while running your commands with optional message.

This can be used for anything that takes time.

## Simple (Static) Example

This example passes a static string to start_spinner which remains in place until stop_spinner is called.

```shell
source spinner.sh

start_spinner "This is my cool spinner message"
sleep 10

stop_spinner
```

## Dynamic Example

This example passes a command to start_spinner_eval which will be re-evaluated each time the spinner is drawn until stop_spinner is called.

```shell
source spinner.sh

start_spinner_eval 'cat log | tail -1'

for i in {1..10}; do
    echo "Iteration number ${i}" >> log
    sleep 1
done

stop_spinner
```

## Config

You can set an environment value called SPINNER_DELAY to change the default (0.25 seconds) delay used when drawing the spinner.

<br />
<p align="right"><a href="https://wolfsoftware.com/"><img src="https://img.shields.io/badge/Created%20by%20Wolf%20on%20behalf%20of%20Wolf%20Software-blue?style=for-the-badge" /></a></p>
