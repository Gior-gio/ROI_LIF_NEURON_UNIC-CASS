# edge_detector

- Description: Digital edge detector for a spiking analog neuron.
- PDK: ihp-sg13g2

## Authorship

- Designer: Jorge Angarita
- Company: OnChip UIS
- Created: Dic 15, 2025
- License: Apache 2.0
- Last modified: None

## Pins

- VDD
  + Description: Analog power supply
  + Type: power
  + Direction: inout
  + Vmin: 1.08
  + Vmax: 1.32
- VSS
  + Description: Analog ground
  + Type: ground
  + Direction: inout
- IN
  + Description: Digital Input
  + Type: signal
  + Direction: input
- OUT
  + Description: Output pulse
  + Type: signal
  + Direction: out

## Default Conditions

- VDD
  + Description: Analog power supply voltage
  + Display: VDD
  + Unit: V
  + Typical: 1.2
- corner_mos
  + Description: Process corner (MOSFET)
  + Display: Corner-MOS
  + Typical: mos_tt
- temperature
  + Description: Ambient temperature
  + Display: Temp
  + Unit: °C
  + Typical: 27

## Symbol

![Symbol of edge_detector](edge_detector_symbol.svg)

## Schematic

![Schematic of edge_detector](edge_detector_schematic.svg)

## Layout

![Layout of edge_detector with white background](edge_detector_w.png)
![Layout of edge_detector with black background](edge_detector_b.png)
