#!/bin/bash

# Check if conda is available
if command -v conda &> /dev/null; then
	    echo "Conda is available. Installing packages using conda."
	        while IFS= read -r package; do
			        conda install --yes "$package" -c https://pypi.tuna.tsinghua.edu.cn/simple || pip install "$package" -i https://pypi.tuna.tsinghua.edu.cn/simple
				    done < requirements.txt
			    else
				        echo "Conda is not available. Installing packages using pip."
					    pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
fi
