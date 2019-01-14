Psoralen treatment - Non equilibrium \#1
================
01\_08\_19

Notebooks:

  - [![D\_{ap}](https://latex.codecogs.com/png.latex?D_%7Bap%7D
    "D_{ap}")
    Processing](https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/Processing/01_08_19_psoralen_nonequil_processing.html)
  - [![D\_{ap}](https://latex.codecogs.com/png.latex?D_%7Bap%7D
    "D_{ap}")
    Analysis](https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/Processing/01_08_19_psoralen_nonequil_Dap_analysis.html)
  - [![D\_m](https://latex.codecogs.com/png.latex?D_m "D_m")
    Processing](https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/Processing/01_08_19_psoralen_nonequil_Dm_processing.html)
  - [![D\_m](https://latex.codecogs.com/png.latex?D_m "D_m")
    Analysis](https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/Processing/01_08_19_psoralen_nonequil_Dm_analysis.html)

## Purpose

As discussed previously, the purpose of Psoralen treating the biofilms
is to look for an effect of DNA CT in the biofilm. Psoralens form mono
and diadduct crosslinks within dsDNA when exposed to UVA light, and
those crosslinks should disrupt the pi orbitals of the crosslinked
bases, which should inhibit DNA charge transfer. Recently, I confirmed
that trioxsalen (a psoralen derivative), does seem to react with DNA
with 365nm light (monitored by fluorescence shift (monoadduct) and then
decay (diadduct)).

I have previously tried one other psoralen experiment using the
“equilibrium” protocol. However, during that experiment, I discovered
that there was significant solution/background PYO in the transfer
reactor, that was likely confounding our GC/SWV signals. I came up with
a modified protocol to try to probe biofilm associated PYO specifically,
and I first attempted this on 12\_10\_18. This is the second version of
what I call the “non-equilibrium” protocol that makes measurements while
the biofilm is equilibrating with the transfer solution (therefore we
can be confident that the measured PYO is biofilm associated).

Therefore, the primary purpose of this experiment was to try to measure
![D\_{ap}](https://latex.codecogs.com/png.latex?D_%7Bap%7D "D_{ap}") for
biofilms treated with and without trioxsalen. A secondary purpose is to
try to measure ![D\_m](https://latex.codecogs.com/png.latex?D_m "D_m")
using a slightly modified analysis too.

## Protocol

1.  Biofilms were grown in reactors with minimal succinate medium for 4
    days, at ~30 degrees C, as usual.
2.  Before any echem, one biofilm was submerged in a 10uM trioxsalen
    solution in a petri dish (from 2mM EtOH stock) and exposed to 365nm
    light from a handheld lamp placed directly above it. The other
    biofilm was submerged in MM succ with an ethanol control.
3.  After an hour of treatment, the biofilms were moved to 125mL
    erlenmyer flasks for intermediate storage, since only one biofilm
    could soak at one time.
4.  I then used a non-equilibrium type protocol, similar to the one
    first attempted on 12\_10\_18.
5.  To measure
    ![D\_{ap}](https://latex.codecogs.com/png.latex?D_%7Bap%7D "D_{ap}")
    I performed the following echem:

<!-- end list -->

  - Soak only working electrode part of IDA (100mL liquid in reactor) in
    75uM PYO in MM succ medium for at least 10 min. Take SWV fast scan
    in soak reactor. During soak, make sure that transfer reactor has
    180mL fresh MM succ medium and that it is stirring with N2 bubbling
    to make anaerobic and equilibrate temperature.
  - Hook up counter and reference in transfer reactor. Remove the
    biofilm from the soak reactor, dip once in a MM succ wash, and then
    transfer to other reactor. Connect working electrodes and check open
    circuit potential (OCP). Take first SWV fast scan. Try to time the
    seconds between immersing the biofilm in the transfer reactor and
    starting the first scan.
  - Run a 1 segment GC (e.g. +0.2 to -0.5 V only ~3min), and then
    immediately run an SWV fast to pair the data. Repeat for ~30min when
    the signals start to level off. In the first transfer 3 min GCs were
    used, so 10 scans were taken. In the second and third transfer, 2
    min GCs (0.0 to -0.4 V) were used, so 15 scans were taken.

<!-- end list -->

6.  To measure ![D\_{m}](https://latex.codecogs.com/png.latex?D_%7Bm%7D
    "D_{m}") I performed the following echem:

<!-- end list -->

  - The first step was the exact same as the first bullet point for
    ![D\_{ap}](https://latex.codecogs.com/png.latex?D_%7Bap%7D
    "D_{ap}").
  - Prepare a SWV fast repetitive run in the software (56 sec gap,
    repeat 60 times).
  - Hook up counter and reference in transfer reactor. Remove the
    biofilm from the soak reactor, dip once in a MM succ wash, and then
    transfer to other reactor. Connect working electrodes and check open
    circuit potential (OCP). Start the repetitive run. Try to time the
    seconds between immersing the biofilm in the transfer reactor and
    starting the first scan.

Note that I had two potentiostats running. There were three chambers
total, 1 soak and 2 transfers, so only one biofilm could soak at one
time, but two transfers could be monitored simultaneously. I kept the
biofilms staggered, first control, then psoralen, but I made sure that
much of the transfer time overlapped to try to make it efficient.

## Data

In total 5 transfers were performed for each biofilm. The first 3 were
data acquisitions to try to measure
![D\_{ap}](https://latex.codecogs.com/png.latex?D_%7Bap%7D "D_{ap}")
with the paired GC/SWV measurements taken as the biofilm equilibrated.
The last two were the attempts to measure
![D\_m](https://latex.codecogs.com/png.latex?D_m "D_m"). In addition to
the “transfer” measurements there are the corresponding “soak”
measurements taken before each transfer (numbered in the same way).
Hopefully the rest of the file naming is obvious.

### Imaging

The control biofilm did seem to be less biomass than the psoralen
treated one. I do not know why, I hope that it did not dissolve when put
in the fresh medium during the psoralen treatment…it was likely aerobic
and not stressful. That said, I think it looked like there was less
biomass on it from the beginning. Also, the last time I treated with
psoralen in the same why and the biofilms looked similar during imaging.

Unfortunately, when I went to image the biofilms, I couldn’t get the
confocal (HHMI 880) to work, although I could locate my samples using
the epifluorescence module. I tried to get it to work for 40 min, but
there was nothing but noise, I have no idea why, but it means that I
don’t have images for these samples.
