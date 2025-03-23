# Gower Distance MATLAB
The Gower distance is a measure of similarity and distance between two data points that can handle mixed data types [1].

![Gower distance](https://quicklatex.com/cache3/b5/ql_19b548b489a8a5447682ee02a25e8ab5_l3.png)

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
