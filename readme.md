# Gower Distance MATLAB
The Gower distance is a measure of similarity and distance between two data points that can handle mixed data types [1].

<img align="center" src="https://i.upmath.me/svg/d(x_i%2Cx_j)%20%3D%20%5Cfrac%7B%5Csum_%7Bk%3D1%7D%5Ep%20w_%7Bijk%7D%20d_%7Bijk%7D%7D%7B%5Csum_%7Bk%3D1%7D%5Ep%20w_%7Bijk%7D%7D%2C%20%5Ctext%7Bwhere%20%7Dw_%7Bijk%7D%3A%3D%20%5B0%2C1%5D%2C%20d_%7Bij%7D%3A%3D%20%0A%5Cbegin%7Bcases%7D%0A%5Cfrac%7B%7Cx_%7Bik%7D%20-%20x_%7Bjk%7D%7C%7D%7B%5Cmax(x)%20-%20%5Cmin(x)%7D%20%26%20%5Ctext%7Bif%20%24x_%7Bik%7D%24%20and%20%24x_%7Bjk%7D%24%20are%20numerical%7D%5C%5C%0A0%20%26%20%5Ctext%7Bif%20%24x_%7Bik%7D%20%3D%20x_%7Bjk%7D%24%20(categorical)%7D%20%5C%5C%0A1%20%26%20%5Ctext%7Bif%20%24x_%7Bik%7D%20%5Cneq%20x_%7Bjk%7D%24%20(categorical)%7D%0A%5Cend%7Bcases%7D" alt="d(x_i,x_j) = \frac{\sum_{k=1}^p w_{ijk} d_{ijk}}{\sum_{k=1}^p w_{ijk}}, \text{where }w_{ijk}:= [0,1], d_{ij}:= 
\begin{cases}
\frac{|x_{ik} - x_{jk}|}{\max(x) - \min(x)} &amp; \text{if $x_{ik}$ and $x_{jk}$ are numerical}\\
0 &amp; \text{if $x_{ik} = x_{jk}$ (categorical)} \\
1 &amp; \text{if $x_{ik} \neq x_{jk}$ (categorical)}
\end{cases}" />

This repository contains a MATLAB implementation of Gower distance calculation for mixed numerical and categorical datasets. The function returns $n \times n$ dissimilarity matrix.

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
