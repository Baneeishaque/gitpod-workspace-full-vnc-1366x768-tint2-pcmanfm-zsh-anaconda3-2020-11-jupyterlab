FROM baneeishaque/gitpod-workspace-full-vnc-1366x768-tint2-pcmanfm-zsh-anaconda3-2020-11

RUN jupyter-lab --generate-config

RUN sed -i "s/# c.ServerApp.ip = 'localhost'/c.ServerApp.ip = '0.0.0.0'/g" /home/gitpod/.jupyter/jupyter_lab_config.py