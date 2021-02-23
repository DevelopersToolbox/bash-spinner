<h1 align="center">
	<a href="https://github.com/WolfSoftware">
		<img src="https://raw.githubusercontent.com/WolfSoftware/branding/master/images/general/banners/64/black-and-white.png" alt="Wolf Software Logo" />
	</a>
	<br>
	Bash Spinner
</h1>

<p align="center">
	<a href="https://travis-ci.com/DevelopersToolbox/bash-spinner">
		<img src="https://img.shields.io/travis/com/DevelopersToolbox/bash-spinner/master?style=for-the-badge&logo=travis" alt="Build Status">
	</a>
	<a href="https://github.com/DevelopersToolbox/bash-spinner/releases/latest">
		<img src="https://img.shields.io/github/v/release/DevelopersToolbox/bash-spinner?color=blue&style=for-the-badge&logo=github&logoColor=white&label=Latest%20Release" alt="Release">
	</a>
	<a href="https://github.com/DevelopersToolbox/bash-spinner/releases/latest">
		<img src="https://img.shields.io/github/commits-since/DevelopersToolbox/bash-spinner/latest.svg?color=blue&style=for-the-badge&logo=github&logoColor=white" alt="Commits since release">
	</a>
	<a href="LICENSE.md">
		<img src="https://img.shields.io/badge/license-MIT-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" alt="Software License">
	</a>
	<br>
	<a href=".github/CODE_OF_CONDUCT.md">
		<img src="https://img.shields.io/badge/Code%20of%20Conduct-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" />
	</a>
	<a href=".github/CONTRIBUTING.md">
		<img src="https://img.shields.io/badge/Contributing-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" />
	</a>
	<a href=".github/SECURITY.md">
		<img src="https://img.shields.io/badge/Report%20Security%20Concern-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" />
	</a>
	<a href=".github/SUPPORT.md">
		<img src="https://img.shields.io/badge/Get%20Support-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" />
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

## Contributors

<p>
	<a href="https://github.com/TGWolf">
		<img src="https://img.shields.io/badge/Wolf-black?style=for-the-badge" />
	</a>
</p>

## Show Support

<p>
	<a href="https://ko-fi.com/wolfsoftware">
		<img src="https://img.shields.io/badge/Ko%20Fi-blue?style=for-the-badge&logo=ko-fi&logoColor=white" />
	</a>
</p>
