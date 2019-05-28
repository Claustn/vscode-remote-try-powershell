# Try Out Development Containers: PowerShell
(This outline is "borrowed" from the examples Microsoft provides)

This is a sample project that lets you try out the **[VS Code Remote - Containers](https://aka.ms/vscode-remote/containers)** extension in a few easy steps.

> **Note:** If you're following the quick start, you can jump to the [Things to try](#things-to-try) section.

## Setting up the development container

Follow these steps to open this sample in a container:

1. If this is your first time using a development container, please follow the [getting started steps](https://aka.ms/vscode-remote/containers/getting-started).

2. If you're not yet in a development container:
   - Clone this repository.
   - Press <kbd>F1</kbd> and select the **Remote-Containers: Open Folder in Container...** command.
   - Select the cloned copy of this folder, wait for the container to start, and try things out!

## Things to try

One you have this sample opened in a container, you'll be able to work with it like you would locally.

Some things to try:

1. **Run Pester Test:** Open `Docker-Demo.Tests.ps1.ps1`
   - Run script by pressing <kbd>F5</kbd>
2. **Set breakpoint:**
   - Open `Docker-Demo.ps1`
   - Set breakpoint on line 10, by selecting line 10 and pressing <kbd>F9</kbd>
   - Debug <kbd>F5</kbd>
   - See that breakpoint is triggered
