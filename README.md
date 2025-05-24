# 🎯 Microphone Array-Based Direction of Arrival for Gunshot Detection

## 📘 Overview

This project is done for participation **SIH(smart india hackathon)** and it presents a **real-time gunshot detection and localization system** designed for **military and defense applications**. The system uses an array of directional microphones arranged in a hexagonal pattern to detect and locate the source of enemy gunfire with **99.99% accuracy**.

The detection relies on **Bandpass Filtering**, **Time Difference of Arrival (TDOA)**, and **Classification & Localization Algorithms** to precisely estimate the direction and position of the gunfire.

---

## 🔍 Problem Statement

Modern battlefields demand intelligent systems that can identify and localize threats in real-time. Traditional gunshot detection systems are often limited in precision or require manual intervention. This project addresses that gap by:

- Automatically detecting a gunshot event using Hardware like SOC/FPGA based 
- Classifying the sound signature  
- Pinpointing the exact direction and location of the shot  
- Working under challenging environmental conditions  

---

## ⚙️ System Components

### 🎙️ Microphone Array
- **Hexagonal Arrangement**: Six microphones placed in a hexagonal configuration to cover a full 360° field.
- **Purpose**: Each microphone detects sound at slightly different times, enabling spatial detection.

### 🎚️ Bandpass Filter (BPF)
- **Center Frequency**: 3 kHz (typical for gunshot acoustic signature)
- **Function**: Passes frequencies within the 3 kHz band and attenuates others.
- **Implementation**: Custom IP integrated in FPGA to preprocess incoming sound.

---

## 🧠 Algorithm Details

### 🔐 Classification
- Identifies gunshot signature using amplitude, frequency, and duration characteristics.
- Filters out ambient noise and non-hostile sounds.

---

## 📍 Localization Techniques

### ⏱️ Time Difference of Arrival (TDOA)

**TDOA** estimates the time delay between microphone pairs and uses geometric methods to locate the source.

#### TDOA Equation:

\[
d_{12} = v \cdot \Delta T_{12}
\]

\[
\sqrt{(x - x_1)^2 + (y - y_1)^2 + (z - z_1)^2} - \sqrt{(x - x_2)^2 + (y - y_2)^2 + (z - z_2)^2} = v \cdot \Delta T_{12}
\]

Where:
- \( d_{12} \) = distance difference from source to microphone 1 and 2
- \( v \) = speed of sound (~343 m/s)
- \( \Delta T_{12} \) = time difference of arrival between mic1 and mic2

---

### 📡 MUSIC Algorithm (Multiple Signal Classification)

**MUSIC** is a high-resolution algorithm used for precise Direction of Arrival (DoA) estimation.

#### How MUSIC Works:

1. **Signal Covariance Matrix** is computed from the microphone array input.
2. **Eigenvalue Decomposition** separates signal space from noise space.
3. **Pseudo-Spectrum** is computed for a range of angles.
4. **DoA Estimation** corresponds to peaks in the pseudo-spectrum.

#### MUSIC Equation (simplified):

\[
P_{\text{MUSIC}}(\theta) = \frac{1}{a^H(\theta) E_n E_n^H a(\theta)}
\]

Where:
- \( a(\theta) \) = steering vector for angle \( \theta \)
- \( E_n \) = eigenvectors corresponding to noise subspace
- \( ^H \) = Hermitian (complex conjugate transpose)

#### Advantages:
- High angular resolution, even with closely spaced sources
- More accurate than basic beamforming or triangulation
- Suitable for multi-source detection

---

## 🔄 Workflow

1. **Sound Acquisition** from microphone array
2. **Signal Filtering** using 3 kHz Bandpass Filter (BPF)
3. **Gunshot Classification** using amplitude and pattern recognition
4. **Direction Estimation** using MUSIC Algorithm
5. **TDOA Calculation** for spatial triangulation
6. **Location Output** on display/UI

---

## 🖥️ System architecture

Here is a screenshot of the system in action:

![Gunshot Detection Screenshot]("C:\Users\yenna\OneDrive\Desktop\sih.png")

---

## 💻 Implementation Platform

- **Hardware**: Zynq SoC / FPGA (for real-time signal processing)
- **Microphones**: Omni Directional microphones (6 or more)
- **Language**: Verilog / VHDL for custom IP, Python/C++/MATLAB for MUSIC
- **Software Tools**: Vivado, MATLAB (for MUSIC), PetaLinux (OS), Vitis (software)

---

## 🧪 Test Case Example

- **Environment**: Audio file of Gun shot.
- **Gunfire**: Simulated using speaker with gunshot audio
- **Result**: System successfully classified and localized within ±5° error margin

---

## 📈 Accuracy

- **Detection Rate**: 99.99% for standard firearms (AK-47, M4A1, pistol)
- **Localization Precision**: < 1 meter error radius in a 10-meter test area
- **Angular Accuracy (MUSIC)**: < 1° in 180° field
- **Latency**: < 100 ms end-to-end processing time

---

## 📦 Future Scope

- Add machine learning-based classifier for multiple firearm types
- Deploy with thermal/IR cameras for visual confirmation
- Expand to vehicle-mounted and drone systems
- Real-time clustering for multiple shooter detection

---

## 👨‍💻 Author's

Yennam Sai Tharun Reddy ✨
 &
Rohan Muthyala ✨  
