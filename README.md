> [!WARNING]
> this software is a work-in-progress and may not work in the current state

# agent

agent is part of the hardware project. reading, modifying and transferring HID inputs from the keyboard and mouse to the microcontrollers running the [device](https://github.com/n1rip/agent) program.

## requirements

- a supported system-on-chip:
    - raspberry pi 5

## usage

1. clone the repository
```bash
git clone https://github.com/n1rip/agent && cd agent
```

2. install dependencies
```bash
sudo dnf in libevdev libevdev-devel gcc makefile clang
```

3. build and run the agent
```bash
./run-release.sh
```

## troubleshooting

for any technical queries, please open an [issue](https://github.com/n1rip/agent/issues) on the github repository. we will get back to you soon.
