# Gower Distance MATLAB
The Gower distance is a measure of similarity and distance between two data points that can handle mixed data types [1].
$\text{Gower}(x_i,x_j) = \frac{\sum_{k=1}^p w_{ijk} d_{ijk}}{\sum_{k=1}^m w_{ijk}},\\ w_{ijk}:= [0,1], d_{ij}:= 
\begin{cases}
\frac{|x_{ik} - x_{jk}|}{\max(x) - \min(x)} & \text{if $x_{ik}$ and $x_{jk}$ are numerical}\\
0 & \text{if $x_{ik} = x_{jk}$ (categorical)} \\
1 & \text{if $x_{ik} \neq x_{jk}$ (categorical)}
\end{cases}$

This repository contains a MATLAB implementation of the Gower distance calculation for datasets.

**Usage:** Paste `GowerDistance()` function in MATLAB. Example usage is as follows.
```m
X = readtable('dataset.csv',VariableNamingRule='preserve');
D = GowerDistance(X);
disp(D);
```

**Citation:** If you use this code in your research, please cite the following paper.

Pyae, A., Low, Y. C., & Chua, H. N. (2024, August). A Combined Distance Metric Approach with Weight Adjustment For Improving Mixed Data Clustering Quality. In 2024 IEEE International Conference on Artificial Intelligence in Engineering and Technology (IICAIET) (pp. 183-188). IEEE.

```bibtex
@INPROCEEDINGS{10730392,
  author={Pyae, Aung and Low, Yeh-Ching and Chua, Hui Na},
  booktitle={2024 IEEE International Conference on Artificial Intelligence in Engineering and Technology (IICAIET)}, 
  title={A Combined Distance Metric Approach with Weight Adjustment For Improving Mixed Data Clustering Quality}, 
  year={2024},
  volume={},
  number={},
  pages={183-188},
  keywords={Measurement;Refining;Clustering algorithms;Learning (artificial intelligence);Complexity theory;Optimization;Distance Metrics;Mixed Data;Hierarchical Clustering;Unsupervised Learning},
  doi={10.1109/IICAIET62352.2024.10730392}
}
```

## References
1. [Gower, J. C. (1971). A general coefficient of similarity and some of its properties. Biometrics, 857-871.](https://doi.org/10.2307/2528823)
