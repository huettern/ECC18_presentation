# Vivado HLS projects

## Projects
```
 projects
│   ├── ecc      # ECC demo project
```

## Install instructrions
Make sure Vivado HLS 2017.3 is installed.

## Build instructrions
Requires Vivado HLS and the settings file sourced.
```bash
make
```

## Make targets
```bash
make csim   # run c simulation only
make synth  # run synthesis
make cosim  # run vhdl co-simulation (requires synth)
make export # export project as IP-XACT (requires cosim)
vivado_hls -p build/ecc/ # Open project in GUI (requires csim done)
```
