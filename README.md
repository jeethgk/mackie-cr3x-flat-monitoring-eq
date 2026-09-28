# Mackie CR3 / CR3-X Flat Studio Reference EQ Profile 🎚️🔊

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Format: FL Studio .fst](https://img.shields.io/badge/Presets-FL%20Studio%20%7C%20EQ%20APO%20%7C%20CamillaDSP-orange.svg)]()
[![Tested on: macOS & Windows](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows%20%7C%20Linux-green.svg)]()
[![Target: Flat / Harman Neutral](https://img.shields.io/badge/Target-Flat%20Reference-brightgreen.svg)]()

> **Who is this for?** This project is for **anyone who owns Mackie CR3 / CR3-X (3.5") speakers and wants to tune them flat**. Whether you are a **music producer, audio engineer, beatmaker, video editor, gamer, or casual listener**, this calibration eliminates the bloated, muddy mid-bass boom and fatiguing treble glare to deliver an honest, crystal-clear, uncolored listening experience.

---

## 📖 Table of Contents
* [The Problem: Why Stock Mackies Fail for Music Production](#-the-problem-why-stock-mackies-fail-for-music-production)
* [The Objective Measurements](#-the-objective-measurements)
* [Step 1: Essential Physical Tweaks (Free)](#-step-1-essential-physical-tweaks-free)
* [Step 2: The Parametric EQ Calibration Profile](#-step-2-the-parametric-eq-calibration-profile)
* [Step 3: Setup Guides](#-step-3-setup-guides)
  * [FL Studio (Included .fst Preset)](#a-fl-studio-recommended-for-production)
  * [Other DAWs (Ableton, Logic, Reaper, Pro Tools)](#b-other-daws-ableton-logic-reaper)
  * [System-Wide on macOS (CamillaDSP + BlackHole)](#c-system-wide-on-macos-spotify-youtube-movies)
  * [System-Wide on Windows (Equalizer APO + Peace)](#d-system-wide-on-windows-equalizer-apo)
* [Dual-Reference Monitoring Workflow (Headphones + Monitors)](#-dual-reference-monitoring-workflow)
* [Repository Files](#-repository-files)
* [Scientific References & Credits](#-scientific-references--credits)

---

## 🚨 The Problem: Why Stock Mackies Fail for Music Production

Out of the box, the **Mackie CR3-X (3.5")** are marketed as *"Creative Reference"* monitors, but objective acoustic measurements reveal an aggressive **"V-shaped" (or "smiley face") sound signature**:

1. **Bloated Mid-Bass (+8.5 dB at ~95–150 Hz):** Engineered to make small 3-inch drivers sound "punchy" for casual gaming, but creating a muddy, resonant "one-note boom".
2. **Scooped / Recessed Midrange (500 Hz – 2.5 kHz):** Vocal body, snare fundamentals, and instrument presence are pushed back by 4 to 5 dB.
3. **Hyped Treble (+7 to +9 dB from 10 kHz to 16 kHz):** A bright, artificial high-end sizzle that leads to quick ear fatigue.

### Why this ruins your music mixes (The Mix Translation Trap):
In audio production, **mix translation** is everything. If your monitors lie to your ears, your mixes fall apart on other systems:
* **The Bass Trap:** Because the speakers artificially boost mid-bass by +8.5 dB, your ears compensate by **cutting bass** in your DAW. When played in cars, clubs, or on phone speakers, your track ends up sounding **thin, hollow, and weak**.
* **The Treble Trap:** Because the speakers over-hype high-frequency sizzle, you **cut highs** in your mix. On AirPods or consumer headphones, your mix sounds **dull and dark**.
* **The Vocal Trap:** Because the midrange is scooped, you turn vocals and guitars **too loud** to hear them.

**Achieving a Flat (linear) frequency response solves this.** A flat monitor acts as a clean magnifying glass: if a track sounds balanced on flat monitors, it translates reliably to every playback system in the world.

---

## 🔬 The Objective Measurements

Based on standardized Klippel Near-Field Scanner (NFS) anechoic measurements (conducted by *Erin’s Audio Corner* and indexed on *Spinorama.org*):

| Metric | Stock Mackie CR3-X | Calibrated with this Profile |
| :--- | :---: | :---: |
| **Harman Tonality Preference Score** | **`2.5 / 10`** (Poor) | **`~5.0 / 10`** (Good / Linear) |
| **Frequency Linearity Deviation** | `±4.4 dB` | **`±1.5 dB`** |
| **Mid-Bass Boom (95 Hz)** | `+8.5 dB` peak | **Tamed to Flat (0 dB)** |
| **High Sizzle (16 kHz)** | `+8.9 dB` peak | **Tamed to Flat (0 dB)** |

---

## 🛠️ Step 1: Essential Physical Tweaks (Free)

Before applying digital EQ, complete these two physical acoustic adjustments:

### 1. Stuff the Rear Bass Reflex Ports (The "Rolled Sock" Trick) 🧦
* **How:** Roll up a pair of clean cotton socks (or insert dense open-cell acoustic foam) and push one into each speaker's rear bass port until snug.
* **The Physics:** Small ported cabinets use a rear resonant tube tuned to ~100 Hz to fake bass output. This causes severe ringing, phase smearing, and air turbulence ("chuffing"). Plugging the port converts the speaker into an **acoustic suspension (sealed) enclosure**, resulting in much tighter, faster, more accurate bass transients and a smooth natural rolloff.

### 2. Elevate to Ear Level & Decouple 📐
* Never leave small monitors sitting flat on a reflective desktop. Vibrations couple into the desk, and reflections off the desk surface muddy the lower midrange.
* Use foam monitor isolation pads (or yoga blocks/books) to raise the tweeters to **exact ear level** and angle them toward your listening position in an equilateral triangle.

---

## 🎛️ Step 2: The Parametric EQ Calibration Profile

All filters utilize **negative gains (cuts)**. This preserves dynamic headroom and guarantees **zero digital clipping**:

| Filter # | Type | Frequency | Gain | Q Factor | Target Acoustic Issue Corrected |
| :---: | :---: | :---: | :---: | :---: | :--- |
| **1** | Peaking (PK) | **94.9 Hz** | **-8.5 dB** | **2.00** | Cuts the artificial 100 Hz port boom |
| **2** | Peaking (PK) | **147.5 Hz** | **-4.7 dB** | **2.00** | Cleans up muddy lower-mid cabinet resonance |
| **3** | Peaking (PK) | **2,090 Hz** | **-4.4 dB** | **1.09** | Restores vocal/instrument balance across crossover |
| **4** | Peaking (PK) | **3,779 Hz** | **-2.8 dB** | **4.67** | Smooths out an upper-mid resonance peak |
| **5** | Peaking (PK) | **10,212 Hz** | **-7.6 dB** | **1.05** | Tames the bright, fatiguing treble shelf |
| **6** | Peaking (PK) | **16,105 Hz** | **-8.9 dB** | **2.32** | Eliminates ultra-high artificial air sizzle |

![REW EQ Filter Settings](rew_eq_settings.png)

> ⚠️ **Note on Sub-Bass Extension (< 65 Hz):** Small 3.5" drivers physically cannot reproduce sub-bass below 65 Hz. **Do not boost frequencies below 60 Hz with EQ**, as this will introduce severe harmonic distortion and drain amplifier headroom. Check sub-bass on headphones.

---

## 💻 Step 3: Setup Guides

### A. FL Studio (Recommended for Production)
This repository includes a ready-to-use preset file: [`Mackie CR3-X Flat Reference.fst`](Mackie%20CR3-X%20Flat%20Reference.fst).

1. Copy `Mackie CR3-X Flat Reference.fst` to your FL Studio presets folder:
   * **macOS:** `~/Documents/Image-Line/FL Studio/Presets/Plugin presets/Effects/Fruity Parametric EQ 2/`
   * **Windows:** `Documents\Image-Line\FL Studio\Presets\Plugin presets\Effects\Fruity Parametric EQ 2\`
2. Open **FL Studio** and open the **Mixer** (`F9`).
3. Select the **Master track**.
4. In the right-side effect rack, add **Fruity Parametric EQ 2** to the **last slot (Slot 10)**.
5. In the plugin window, click **Presets** $\rightarrow$ select **`Mackie CR3-X Flat Reference`**.
6. ⚠️ **The Golden Rule:** Always click the **green mute/bypass LED dot** next to Slot 10 before rendering/exporting your final WAV/MP3 track!

### B. Other DAWs (Ableton, Logic, Reaper)
1. Add any standard 6-band Parametric EQ (e.g. *FabFilter Pro-Q*, *Ableton EQ Eight*, *Logic Channel EQ*, or *ReaEQ*) to your **Monitor FX / Control Room** chain (or last on Master).
2. Input the exact Frequency, Gain, and Q values from the table above.
3. Save it as a DAW preset.

### C. System-Wide on macOS (Spotify, YouTube, Movies)
For everyday listening across all macOS apps, this repo includes a zero-latency CoreAudio DSP configuration using **CamillaDSP** and **BlackHole 2ch**:
* Config file: [`camilladsp_config.yml`](camilladsp_config.yml)
* Allows a **1-click toggle** in the macOS menu bar:
  * Select **BlackHole 2ch** $\rightarrow$ Tuned flat sound for Mackies.
  * Select **USB AUDIO CODEC** $\rightarrow$ Direct raw bypass for headphones.

### D. System-Wide on Windows (Equalizer APO)
1. Install [Equalizer APO](https://sourceforge.net/projects/equalizerapo/) and [Peace GUI](https://sourceforge.net/projects/peace-equalizer-apo-extension/).
2. Load [`mackie_cr3x_equalizer_apo.txt`](mackie_cr3x_equalizer_apo.txt) into Equalizer APO's Configuration Editor.

---

## 🎧 Dual-Reference Monitoring Workflow

If you own studio monitoring headphones (such as the **Audio-Technica ATH-M40x**, **Sony MDR-7506**, or **Sennheiser HD 600**):

| Audio Task | Preferred Tool | EQ Status |
| :--- | :---: | :---: |
| **Composing, Arranging, Panning, Reverb Balances** | **Mackie 3.5** | **EQ ON** |
| **Vocal Intelligibility & Dialogue Checks** | **Mackie 3.5** | **EQ ON** |
| **Sub-Bass & 808 Tuning (< 65 Hz)** | **ATH-M40x** | **EQ BYPASSED (MUTED)** |
| **Audio Editing, Click/Pop Removal, Fine Vocal Tuning** | **ATH-M40x** | **EQ BYPASSED (MUTED)** |

> *Remember:* This EQ calibration is tuned exclusively to correct the physical frequency curve of the Mackie 3.5 speakers. Always mute/bypass it when switching to headphones!

---

## 📂 Repository Files

* [**`Mackie CR3-X Flat Reference.fst`**](Mackie%20CR3-X%20Flat%20Reference.fst) — Native FL Studio preset for Fruity Parametric EQ 2.
* [**`mackie_cr3x_equalizer_apo.txt`**](mackie_cr3x_equalizer_apo.txt) — Standard Equalizer APO / Peace / REW filter configuration.
* [**`camilladsp_config.yml`**](camilladsp_config.yml) — CamillaDSP YAML configuration for CoreAudio / Linux.
* [**`rew_eq_settings.png`**](rew_eq_settings.png) — Graphical frequency response reference chart.
* [**`REVERSE_UNINSTALL.txt`**](REVERSE_UNINSTALL.txt) — Complete uninstallation instructions.
* [**`uninstall.sh`**](uninstall.sh) — 1-click reversal script.

---

## 📜 Scientific References & Credits

* Objective Klippel Near-Field Scanner (ANSI/CTA-2034-A) measurement dataset by [Erin's Audio Corner](https://www.erinsaudiocorner.com/loudspeakers/mackie_cr3x/).
* Standardized frequency response curves and Harman preference scoring indexed on [Spinorama.org](https://www.spinorama.org).
* Additional acoustic analysis and port-tuning research by [NoAudiophile](https://noaudiophile.com/Mackie_CR3/).

---

## ⚖️ License
Released under the [MIT License](LICENSE). Free for personal, commercial, and educational use.
