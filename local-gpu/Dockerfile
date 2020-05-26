FROM autonav:local

### prep
RUN pip uninstall -y torch
RUN pip uninstall -y torchvision

### nvidia
LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV PATH /usr/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}

### torch-gpu version
RUN pip install torch torchvision  # cuda 10.1
