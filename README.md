# UNIC-CASS 2025: ROI LIF Neuron
Ring oscillator based time domain integrator for a leaky integrate and fire spiking neuron for UNIC-CASS 2025.

## Team Members:

- Jorge Angarita (M)
- Juan Luengas (B)
- Nicolás Velasco (B)
- Michel Salazar (B)
- Carlos Álvarez (B)

**Academic Experience:**
- (M): MSc in EE Student at UIS
- (B): BSc in EE Student at UIS

## About this project

Recently, the leaky integrate and fire (LIF) neuron model has become one of the most common models for implementing spiking neural networks (SNNs) in silicon. However, one of the main difficulties is finding a topology that is easily scalable on a large scale [1]. Many of them end up requiring opamps, and therefore high supply voltages and good gain, which also makes their design difficult for advanced CMOS nodes [2]. To this end, this project will implement a ring oscillator-based integrator, a mostly digital implementation that achieves this by converting phase to voltage at the output of a pair of voltage-controlled oscillators (VCOs). This will be demonstrated by designing a basic neuron block taken from [1], which, to the project authors' knowledge, has not yet been reported in the literature as having been manufactured in silicon [2].

[1] S. Sanjeet, S. Das, S. -H. W. Chiang, M. Fujita and B. D. Sahoo, ""Systematic Design of Ring VCO-Based SNN - Translating Training Parameters to Circuits -,"" 2024 IEEE 67th International Midwest Symposium on Circuits and Systems (MWSCAS), Springfield, MA, USA, 2024, pp. 1212-1216, doi: 10.1109/MWSCAS60917.2024.10658910.
[2] T. Barton et al., ""A Subthreshold Time-Domain Analog Spiking Neuron With PLL-Based Leak Circuit and Capacitive DAC Synapse,"" in IEEE Solid-State Circuits Letters, vol. 7, pp. 143-146, 2024, doi: 10.1109/LSSC.2024.3384762

**Top level schematic**
![Expected outcome](Media_Readme/RO_Neuron_Functional.png)
