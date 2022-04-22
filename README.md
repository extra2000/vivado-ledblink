# vivado-ledblink

| License | Versioning |
| ------- | ---------- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) |

Simple example how to use timing for LED blink.


## Preprequisites

* Target board: `digilentinc.com:arty-z7-20:part0:1.1`.
* Vivado 2021.2 and above.


## Getting Started

Clone this project and `cd` into the project root:
```
git clone https://github.com/extra2000/vivado-ledblink.git
cd vivado-ledblink
```


## Creating Vivado Project

From the project root directory, execute the following command:
```
cd vivado/run/
flatpak run com.github.corna.Vivado -mode batch -source ../script/create_prj.tcl -notrace -tclargs --project_name ledblink
```

Then, load the Vivado project:
```
flatpak run com.github.corna.Vivado -mode gui ./ledblink/ledblink.xpr
```
