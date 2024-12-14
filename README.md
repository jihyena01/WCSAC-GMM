
## Introduction
WCSAC-GMM extends the Worst-Case Soft Actor-Critic (WCSAC) framework by incorporating a Gaussian Mixture Model (GMM) to accurately model complex, multi-modal cost distributions. This enhancement improves safety-critical performance by enabling robust and adaptive risk assessment.<br><br>



## Prerequisites
Before using this package, ensure that Mujoco and Mujoco.py are installed:
1. Install Mujoco:

* Download Mujoco from [Mujoco.org.](https://github.com/google-deepmind/mujoco/releases)
* Extract it to ~/.mujoco/ and set the following environment variables:
  
```python
export MUJOCO_PY_MJKEY_PATH=~/.mujoco/mjkey.txt
export MUJOCO_PY_MUJOCO_PATH=~/.mujoco/mujoco200
```

2. Install [Mujoco.py](https://github.com/openai/mujoco-py)
<br><be>
  
  
<br/>


## Installation

1. To install this package:
```python
git clone https://github.com/jihyena01/WCSAC-GMM.git

cd WCSAC-GMM/

pip install -e .
```

<br><br>

## Experiment
Portions of the code in saclag.py and wcsac.py are adapted from [Safety Starter Agents](https://github.com/openai/safety-starter-agents)
So you can install Safety Starter Agents, and add wcsac_gmm.py of our package to /path/to/safety-starter-agents/safe_rl/sac. Then you can follow the instructions on the Safety Starter Agents to use our algorithms as using their given baselines.

Warning: If you want to use the WCSAC_gmm algorithm in [Safety Gym](https://github.com/openai/safety-gym), make sure to install Safety Gym according to the instructions on the Safety Gym repo.


<br><br>

## License
This project is licensed under the [MIT License](LICENSE).
