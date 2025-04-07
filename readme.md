# Gower Distance MATLAB
The Gower distance is a measure of similarity and distance between two data points that can handle mixed data types [1].

$d(x_i,x_j) = \frac{\sum_{k=1}^p w_{ijk} d_{ijk}}{\sum_{k=1}^p w_{ijk}}$

where $w_{ijk}:= [0,1]$ and $d_{ij}:=\frac{|x_{ik} - x_{jk}|}{\max(x) - \min(x)}$ if $x_{ik}$ and $x_{jk}$ are numerical and  $d_{ij}:=1 - \mathbb{I}(x_{ik} = x_{jk})$ if categorical.

This repository contains a MATLAB implementation of Gower distance calculation for mixed numerical and categorical datasets. The function returns $n \times n$ dissimilarity matrix.

**Usage:** Paste `gower()` function in MATLAB. Example usage is as follows.
```m
X = readtable('dataset.csv',VariableNamingRule='preserve');
D = gower(X);
disp(D);
```

**Citation**

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
