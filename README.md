# Empowering Women in Environmental Sciences: Contextual Tutorials for Digital Research Infrastructure

<p align="center">
  <a href="https://alliancecan.ca/en">
    <img src="docs/images/alliance_logo_icon.png" height="38" alt="Alliance Canada Logo" align=center>
  </a>
  &emsp;
  <a href="https://ace-net.ca/">
    <img src="docs/images/acenet_logo_icon.png" height="38" alt="ACENET Logo" align=center>
  </a>
  &emsp;
  <a href="https://www.gnu.org/licenses/gpl-3.0">
    <img src="https://img.shields.io/badge/License-GPLv3-blue.svg", alt="License: GPL v3" align=center>
  </a>
  &emsp;
  <a href=#contributors>
    <img src="https://img.shields.io/github/all-contributors/rlwhall/CLASSIC_DRI_Tutorial?color=ee8449", alt="All Contributors" align="center">
  </a>
</p>

## About

This repository contains tutorials for running the CLASSIC terrestrial biosphere model on the Digital Research Alliance of Canada's (DRAC) digital research infrastructure.

The tutorials in this repository were developed for the project *Empowering Women in Environmental Sciences: Contextual Tutorial for Digital Research Infrastructure*, as a part of the [DRI EDIA Champions Pilot Program](https://alliancecan.ca/en/funding-opportunities/dri-edia-champions-pilot-program). The goal of this project is to improve access to and knowledge of the Digital Research Alliance of Canada’s digital research infrastructure (DRI). This project developed and delivered approachable tutorials for women in the environmental sciences and showcased a tangible use-case for high-performance computing (HPC) and cloud computing. These tutorials detail the setup and operation of CLASSIC in an DRAC HPC environment. 

The CLASSIC model is an important land surface model in Canada, therefore an appealing and engaging example for environmental science researchers and students. This project aims to not only engage women with DRAC’s DRI through topics they are familiar with and interested in, but also provide useful and applicable resources for future environmental science research and researchers. This proposal will expose women to the concepts and possibilities of DRI, increase digital literacy, provide opportunities for role modelling and collaboration, and better understand barriers to DRI access. 

*Empowering Women in Environmental Sciences: Contextual Tutorial for Digital Research Infrastructure* is supported by funding from the Digital Research Alliance of Canada.

<p align="center">
  <a href="https://alliancecan.ca/en">
    <img src="docs/images/alliance_logo_full.png" height="48" align="center" alt="Alliance Canada Logo">
  </a>
</p>

## Project Quick Start

### Workshop & Tutorial Overview

The tutorials in this repository were developed for a workshop designed to introduce women in the Earth and Environmental Sciences to digital research infrastructure. The workshop provided an introduction to digital research infrastructure and development tools such as the terminal, JupyterLab, Bash and Python. Attendees then had an opportunity to interact with a DRAC training environment called [Magic Castle](https://research-software-directory.org/software/magic-castle), where they submitted a slurm job to run CLASSIC at an eddy covariance tower location. Once the model simulation had run, attendees compared the model output to the observed eddy covariance tower data.

The workshop followed the a series of presentations and tutorials.
- Introduction to the Digital Research Alliance of Canada (DRAC), Digital Research Infrastructure (DRI), Advanced Research Computing (ARC)
  - Materials can be found in `docs/tutorial_files/Slides`.
- Introduction to Earth system models and terrestrial biosphere models
  - Materials can be found in `docs/tutorial_files/Slides`.
- Introduction to the CLASSIC model
  - Materials can be found in `docs/tutorial_files/Slides`.
- Introduction to the terminal
  - Materials can be found in `docs/tutorial_files/Slides`.
- Terminal Activity
  - An interactive introduction to bash and the terminal.
  - Materials can be found in `docs/tutorial_files/Speaker_Notes/intro_to_bash_and_terminal`.
- Submitting a slurm job
  - Walkthrough with attendees on how to submit a CLASSIC model run as a slurm job.
  - Materials can be found in `docs/tutorial_files/Speaker_Notes/intro_to_drac_dri`.
- Exploratory Data Analysis of model outputs
  - Interactive activity with workshop attendees to visualize CLASSIC model outputs and compare them against observational data from a FLUXNET eddy covariance tower.
  - Materials can be found in `docs/tutorial_files/Speaker_Notes/intro_to_drac_dri`.

### CLASSIC

Usage of these tutorials requires the installation of CLASSIC, an open-source terrestrial biophere model developed and maintained by Environment and Climate Change Canada. To run these tutorials the CLASSIC codebase must be installed on the computer running the tutorials. More information on the model can be found on the CLASSIC [website](https://cccma.gitlab.io/classic_pages/), and instructions for how to install and run CLASSIC can be found in the CLASSIC [documentation](https://cccma.gitlab.io/classic/index.html). Running CLASSIC requires obtaining the necessary data files, instructions for which can also be found in the CLASSIC documentation.

### Workshop Materials

Workshop materials can be found in `docs/tutorial_files`. 

#### *Slides*

Workshop slides can be found in `docs/tutorial_files/Slides`.

#### *Speaker_Notes*

Speaker notes for the workshop facilitator can be found in `docs/tutorial_files/Speaker_Notes`.
- `intro_to_bash_and_terminal`
  - Speaker notes for an interactive tutorial introducing attendees to the terminal and bash.
- `intro_to_drac_dri`
  - `submit_job_tutorial.ipynb`
    - Speaker notes for the walkthrough with attendees of submitting a CLASSIC model run as a slurm job.
  - `classic_eda_tutorial.ipynb`
    - Speaker notes for attendee activity visualizing CLASSIC model outputs and comparing them with observed FLUXNET eddy covariance tower data.

#### *ARC_for_EESC*

The `docs/tutorial_files/ARC_for_EESC` folder contains the workshop materials the attendees will need to complete the interactive tutorials. 

*Folder Structure*

The workshop materials assume the following folder structure within `ARC_for_EESC`. If folders are structured or named differently than what is specified below, the code may not exucute properly.

Changes to the structure below, or the file names of the CLASSIC forcing data, may require updates to the `classic_submit_dra.sh`, `custom_job_options.txt`, and `EDA_template.ipynb` files.

```
|-- ARC_for_EESC # Parent folder with all tutorial files
  |-- CLASSIC # Holds the contents of the CLASSIC repository
  |-- Forcing_T63 # Folder with CLASSIC forcing data
    |-- CRUJRA_T63 # Folder with CRUJRA meterologicl forcing data
  |-- observationalDataFLUXNET # Folder with observed datasets from FLUXNET tower 
```

*Files*

There are several files within `ARC_for_EESC` which attendees interact with.
- `classic_submit_dra.sh`
  - The job file attendees submit to slurm.
- `custom_job_options.txt`
  - A configuration file for the CLASSIC model. It specifies the filepaths where the model can find forcing data files and store model outputs, as well as settings to turn model features on and off. The filepaths in `custom_job_options.txt` may need to be updated depending on the folder and file names of the forcing data files.
- `EDA_template.ipynb`
  - A Jupyter Notebook file. During the workshop attendees interact with this file to visualize model outputs.
- `requirements.txt`
  - A requirements file with packages each attendee needs to install in their environment. These requirements are needed for the code in `EDA_template.ipynb`.

## Project Roadmap

This project is complete. A roadmap was created to map and track progress towards major project milestones. The roadmap can be accessed [here](https://github.com/users/rlwhall/projects/1/views/1).

## Licensing

This repository is licensed under the GNU License - see the [LICENSE.md](https://github.com/angular/code-of-conduct/blob/main/LICENSE.md) file for details.

## Project Code of Conduct

See [CODE_OF_CONDUCT.md](https://github.com/angular/code-of-conduct/blob/main/CODE_OF_CONDUCT.md).

## Contributors
For details on how to contribute to this project, see the [CONTRIBUTING.md](https://github.com/angular/code-of-conduct/blob/main/LICENSE.md) file.

Thanks go to our contributors ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/rlwhall"><img src="https://avatars.githubusercontent.com/u/66327867?v=4?s=100" width="100px;" alt="Renée"/><br /><sub><b>Renée</b></sub></a><br /><a href="#code-rlwhall" title="Code">💻</a> <a href="#doc-rlwhall" title="Documentation">📖</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

 ## Acknowledgements

*Empowering Women in Environmental Sciences: Contextual Tutorial for Digital Research Infrastructure* is supported in part by funding from the Digital Research
Alliance of Canada.

The Digital Research Alliance of Canada plays a critical role in advancing the Government of Canada’s
National DRI Strategy. It coordinates and funds activities related to and including Advanced Research
Computing, Research Data Management, and Research Software. https://alliancecan.ca/en

<p align="center">
  <a href="https://alliancecan.ca/en">
    <img src="docs/images/alliance_logo_full.png" height="48" align="center" alt="Alliance Canada Logo">
  </a>
</p>

Technical support for the configuration and delivery of the *Empowering Women in Environmental Sciences: Contextual Tutorial for Digital Research Infrastructure* in-person workshops was graciously provided by Ross Dickson at ACENET. https://ace-net.ca/

<p align="center">
  <a href="https://ace-net.ca/">
    <img src="docs/images/acenet_logo_full.png" height="48" alt="ACENET Logo" align=center>
  </a>
</p>