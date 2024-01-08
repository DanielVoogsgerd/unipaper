import matplotlib.pyplot as plt
import numpy as np
from matplotlib import rcParams
import matplotlib.font_manager as fm

styles = [
    ("VU", "~/dev/latexclass/matplotlib/vu.mplstyle"),
    ("UvA", "~/dev/latexclass/matplotlib/uva.mplstyle"),
]
plt.rcParams["font.family"] = "Source Sans Pro"

for name, style in styles:
    plt.figure()
    with plt.style.context(["~/dev/latexclass/matplotlib/twocolumn.mplstyle", style]):
        for i in range(10):
            plt.plot(np.arange(10), np.arange(10) + i)

    plt.title(name)

plt.show()
