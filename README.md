# Pooria Askari Moqaddam

![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white)
![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Kotlin](https://img.shields.io/badge/Kotlin-7F52FF?style=flat-square&logo=kotlin&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![Vim](https://img.shields.io/badge/Vim-019733?style=flat-square&logo=vim&logoColor=white)


**Software Engineer** · Cross-platform development · Systems thinking · Open source tooling

[![LinkedIn](https://img.shields.io/badge/LinkedIn-pooriaaskarim-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/pooriaaskarim/)
[![Email](https://img.shields.io/badge/Email-pooriaaskarim%40gmail.com-EA4345?style=flat-square&logo=gmail&logoColor=white)](mailto:pooriaaskarim@gmail.com)

---

## Resume

[![Render LaTeX Resume](https://github.com/pooriaaskarim/resume/actions/workflows/render.yml/badge.svg)](https://github.com/pooriaaskarim/resume/actions/workflows/render.yml)
[![Latest Release](https://img.shields.io/github/v/release/pooriaaskarim/resume?label=latest&style=flat-square)](https://github.com/pooriaaskarim/resume/releases/latest)
[![License: MIT + CC BY-NC-ND](https://img.shields.io/badge/License-MIT%20%2B%20CC%20BY--NC--ND-blue?style=flat-square)](LICENSE)

**[→ Download PDF](https://github.com/pooriaaskarim/resume/releases/latest/download/PooriaAskariMoqaddam.resume.pdf)**

---

## What I Build

I have been working on a set of tools as contributions to the community of Dart and Flutter developers. They are all open-source, open to contributions and under permissive licenses.

### [Logd](https://github.com/pooriaaskarim/logd)
[![pub.dev](https://img.shields.io/pub/v/logd?style=flat-square&logo=dart&label=pub.dev)](https://pub.dev/packages/logd)
[![Pub Points](https://img.shields.io/pub/points/logd?style=flat-square)](https://pub.dev/packages/logd)
[![Pub Likes](https://img.shields.io/pub/likes/logd?style=flat-square)](https://pub.dev/packages/logd)

A hierarchical logging engine for Dart/Flutter. Loggers live in a dot-separated tree and inherit configuration lazily — with version-based cache invalidation, atomic multi-line buffering, and a [...]

### [Flutter Notification Queue](https://github.com/pooriaaskarim/flutter_notification_queue)
[![pub.dev](https://img.shields.io/pub/v/flutter_notification_queue?style=flat-square&logo=dart&label=pub.dev)](https://pub.dev/packages/flutter_notification_queue)
[![Pub Points](https://img.shields.io/pub/points/flutter_notification_queue?style=flat-square)](https://pub.dev/packages/flutter_notification_queue)
[![Pub Likes](https://img.shields.io/pub/likes/flutter_notification_queue?style=flat-square)](https://pub.dev/packages/flutter_notification_queue)

An overlay-based notification system for Flutter. Manages notifications as stateful, interactive entities through a channel-based queue with 8 positional slots, drag-to-relocate, backpressure hand[...]


### [SarvMD](https://github.com/pooriaaskarim/sarvmd) *(in development)*
<p align="left">
  <a href="https://pooriaaskarim.github.io/sarvmd/">
    <img src="https://img.shields.io/badge/Try%20SarvMD-Live%20Web%20App-6C5CE7?style=for-the-badge&logo=flutter" alt="Try SarvMD Live Web App">
  </a>
</p>
A weekend project that started as a fun side project to learn about music engraving. It is a zero-dependency vector engraving engine for sheet music, built in Dart. Physical page coordinates[...]


---

## Repository Architecture & Automated Build Pipeline

This repository serves as a self-compiling resume workspace, utilizing LaTeX for layout design and GitHub Actions for continuous integration.

### Document Design & Layout
This document is configured using a custom document class ([`resume.cls`](resume/resume.cls)). Layout decisions include:
- **Custom Geometry**: Body-embedded letterhead design avoiding complex `fancyhdr` margins and rendering issues.
- **Visual Profiling**: Clean, TikZ-rendered skill chips to structure technical proficiencies.
- **Environment Parity**: The Roboto font family is loaded via a local `texmf` tree, ensuring reproducible compilations across local development and CI environments.

The resume's structure and content are defined in [`resume/resume.tex`](resume/resume.tex).

### CI/CD Deployment Workflow
Every commit pushed to the `master` branch targeting the `resume/` directory triggers an automated GitHub Actions pipeline:
1. **Versioning**: Generates a timestamped version identifier.
2. **Compilation**: Compiles the LaTeX sources using `pdflatex` to produce a high-fidelity PDF.
3. **Release**: Deploys the generated PDF to GitHub Releases, ensuring the download link always serves the latest build.

---

## Use This as a Template

This repository demonstrates professional resume engineering with LaTeX, GitHub Actions, and automated deployment. The modular design makes it easy to adapt for your own resume:

### Getting Started
1. **Fork** this repository or clone it as a template
2. **Customize** [`resume/resume.tex`](resume/resume.tex) with your content
3. **Adjust** [`resume/resume.cls`](resume/resume.cls) for your design preferences
4. **Commit** to `master` — GitHub Actions will automatically render and release your PDF

### Key Files
- **`resume.cls`** — Custom LaTeX document class with TikZ skill badges (MIT License)
- **`resume.tex`** — Your resume content (modify this)
- **`.github/workflows/render.yml`** — Automated PDF compilation and release pipeline

### Features
- ✅ Automated PDF rendering on every commit
- ✅ Always-current download link via GitHub Releases
- ✅ Reproducible builds with local `texmf` environment
- ✅ Split licensing: template code (MIT) + personal content (CC BY-NC-ND)

---

## License

This repository is licensed under a split-licensing model:
*   **Code & Templates** (`resume.cls`, workflows, configurations) are licensed under the **[MIT License](LICENSE)**.
*   **Personal Biographical Content** (`resume.tex`, compiled PDF) is licensed under the **[CC BY-NC-ND 4.0](LICENSE)** (Creative Commons Attribution-NonCommercial-NoDerivatives) License.
