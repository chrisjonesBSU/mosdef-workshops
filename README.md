# cecam-mosdef-workshops
Workshops for the [Molecular Simulation and Design Framework (MoSDeF)](https://mosdef.org/). MoSDeF is a suite of open-source Python tools that enable extensible and reproducible molecular simulations. 

MoSDeF includes: [mBuild](https://github.com/mosdef-hub/mbuild) | [GMSO](https://github.com/mosdef-hub/gmso.git) | [Foyer](https://github.com/mosdef-hub/foyer.git)
<p align="center">
  <img src="mosdef.png" alt="mosdef" height="450">
</p>

# How to run these tutorials:

## https://github.com/chrisjonesBSU/cecam-mosdef-workshops

## Use GitHub Codespaces:
Click: [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/chrisjonesBSU/cecam-mosdef-workshops?quickstart=1)

This launches a remotely-hosted Jupyter Lab instance with everything ready-to-go. You'll need a (free) GitHub account, and the first launch takes a few minutes while the environment is built. Jupyter Lab opens in a new browser tab on its own; if it doesn't, open the **Ports** tab and click the globe icon next to port 8888, or run in the terminal:

```bash
cd notebooks
jupyter lab
```

When you're finished, stop your machine at [github.com/codespaces](https://github.com/codespaces) using the `...` menu next to this repository.


## Use Locally:
If you are on a MacOS or Linux machine, and already have the Anaconda package manager installed, you can choose to build the environment and run the notebooks locally. It is possible that the notebooks run faster locally than using Binder. If you are on Windows and want to use these locally, you will have to run the commands below within Windows Subsystem for Linux (WSL).

In your terminal run:

```bash
git clone git@github.com:chrisjonesBSU/cecam-mosdef-workshops.git
cd cecam-mosdef-workshops
conda env create -f environment.yml
conda activate mosdef
cd notebooks
jupyter lab
```

**Note:** The git clone command above works if you have an SSH key set up. If not you can clone with HTTPS:

`git clone https://github.com/chrisjonesBSU/cecam-mosdef-workshops.git`

This may prompt you for your GitHub login information.

---

# Beyond The Workshop:

**Using MoSDeF:** All three packages are available on conda-forge:

`conda create -n mosdef -c conda-forge mbuild foyer gmso`

The **documentation** for each package is available on their repositories.

**Issues, questions and contributions are welcome!** Visit the GitHub repositories and open an issue with any question or technical barriers you are facing. Open a pull-request to make upstream contributions. If you would like to discuss in more detail over email, please send an email to **c.jones_1@hw.ac.uk**.

**GitHub Repos:** [mBuild](https://github.com/mosdef-hub/mbuild) | [GMSO](https://github.com/mosdef-hub/gmso.git) | [Foyer](https://github.com/mosdef-hub/foyer.git)

**Note about mBuild:** At the moment, the examples in `2-mBuild-Polymers` and `3-Polymer-Workflows` requires installing mBuild from source using the develop branch, as opposed to installing mBuild from Anaconda. 

```bash
git clone https://github.com/mosdef-hub/mbuild
cd mbuild
git checkout develop
conda env create -f environment.yml
conda activate mbuild
pip install .
```
