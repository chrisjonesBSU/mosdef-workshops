# mosdef-workshops
Workshops for the [Molecular Simulation and Design Framework (MoSDeF)](https://mosdef.org/). MoSDeF is a suite of open-source Python tools that enable extensible and reproducible molecular simulations. 

MoSDeF includes: [mBuild](https://github.com/mosdef-hub/mbuild) | [GMSO](https://github.com/mosdef-hub/gmso.git) | [Foyer](https://github.com/mosdef-hub/foyer.git)
<p align="center">
  <img src="mosdef.png" alt="mosdef" height="450">
</p>

# How to run these tutorials:

## Use GitHub Codespaces:
Click: [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/chrisjonesBSU/mosdef-workshops?quickstart=1)

This launches a remotely-hosted Jupyter Lab instance with everything ready-to-go. You'll need a (free) GitHub account. Startup takes a couple of minutes while the environment is downloaded.

Jupyter Lab opens in a new browser tab on its own. If it doesn't, open the **Ports** tab and click the globe icon next to port 8888, or run in the terminal:

```bash
cd notebooks
jupyter lab --allow-root
```

### When you are finished: stop and delete your Codespace

Closing the browser tab does **not** shut the machine down. It keeps running, and keeps using your monthly GitHub allowance, until it times out. Shut it down yourself when you're done.

1. Go to [github.com/codespaces](https://github.com/codespaces). This page lists every Codespace on your account. A green dot means it is still running.
2. Click the `...` menu next to the `mosdef-workshops` entry.
3. Choose **Stop codespace** to pause it. Your files and environment are kept, and it restarts in a few seconds. Use this if you want to come back to your work later.
4. Choose **Delete** to remove it completely. Use this once you are finished with the tutorials.

**Please delete rather than only stopping when you're done for good.** A stopped Codespace still uses your storage allowance; a deleted one uses nothing.

**Note:** Anything you want to keep (edited notebooks, output files) must be downloaded before you delete. Right-click a file in the Jupyter Lab file browser and choose **Download**.


## Using On Your Own Computer:
**Note:** The commands below require having the anaconda (also known as conda) package manager installed. Installation instructions for Anaconda can be found here: https://www.anaconda.com/docs/getting-started/installation

If you are on a MacOS or Linux machine, and have the Anaconda package manager installed, you can choose to build the environment and run the notebooks locally. It is possible that the notebooks run faster locally than using hosted services such as GitHub Codespaces. If you are on Windows and want to run these locally, we recommend using [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/about). Once you have WSL setup and running, use the commands below.


In your terminal run the following commands to clone this repository and build the conda environment:

```bash
git clone git@github.com:chrisjonesBSU/mosdef-workshops.git
cd mosdef-workshops
conda env create -f environment.yml
conda activate mosdef
cd notebooks
jupyter lab
```

**Note:** The git clone command above works if you have an SSH key set up. If not you can clone with HTTPS:

`git clone https://github.com/chrisjonesBSU/mosdef-workshops.git`

This may prompt you for your GitHub login information.

---

# Beyond The Workshop:

**Using MoSDeF:** All three packages are available on conda-forge:

`conda create -n mosdef -c conda-forge mbuild foyer gmso`

The **documentation** for each package is available on their repositories.

**Issues, questions and contributions are welcome!** Visit the GitHub repositories and open an issue with any question or technical barriers you are facing. Open a pull-request to make upstream contributions. If you would like to discuss in more detail over email, please send an email to **c.jones_1@hw.ac.uk**.

**GitHub Repos:** [mBuild](https://github.com/mosdef-hub/mbuild) | [GMSO](https://github.com/mosdef-hub/gmso.git) | [Foyer](https://github.com/mosdef-hub/foyer.git)

**Note about mBuild:** At the moment, the examples in `2-mBuild-Polymers` and `3-Polymer-Workflows` requires installing mBuild from source using the **develop branch**, as opposed to installing mBuild from conda-forge. 

Install mBuild from source using the `develop` branch: 

```bash
git clone https://github.com/mosdef-hub/mbuild
cd mbuild
git checkout develop
conda env create -f environment.yml
conda activate mbuild
pip install .
```
