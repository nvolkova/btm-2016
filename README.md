# BTM-2016
Materials for Basic Teaching Module in EMBL Predoc Course 2016

##Data

### Marijuana prices per state
- [Download data](https://github.com/omarwagih/btm-2015/raw/master/playwithdata/weedprices.rds?raw=TRUE)
- Read file into R using `readRDS("weedprices.rds")`
- Analyze the data and show in a short report which states have increase in prices over months or years
- Similar analysis for number of consumers
- How price change varies by quality 
- How differences in prices vary between qualities
- Use what you've learned in ggplot2 to generate some visualisations 
- Integerte with Rmarkdown

##R Markdown

[Download the slides](https://github.com/nvolkova/btm-2016/blob/master/RM-slides.html).

[Download rmarkdown cheatsheet](https://github.com/nvolkova/btm-2016/blob/master/rmarkdown-cheatsheet.pdf?raw=TRUE)

###Installation:
```r
install.packages("rmarkdown")
```

###Excercises:
- [1. Simple syntax and code chunks](https://github.com/nvolkova/btm-2016/blob/master/RM-excecises/ex1.Rmd?raw=TRUE)
- [2. Plotting, caching and formatting](https://github.com/nvolkova/btm-2016/blob/master/RM-excecises/ex2.Rmd?raw=TRUE)
- [Bonus: make pretty slides with Rmarkdown](https://github.com/nvolkova/btm-2016/blob/master/RM-excecises/Bonus.Rmd?raw=TRUE)

###Play with the dataset:
1. Upload the dataset into R
2. Analyse *this and that and that*
3. Produce some nice plots
4. Integrate with R Markdown.

##Jupyter Notebook

Download the slides [here](https://github.com/nvolkova/btm-2016/blob/master/JN-slides.pdf).

###Installation:

While Jupyter runs code in many programming languages, Python is a requirement (Python 3.3 or greater, or Python 2.7) for installing the Jupyter Notebook. For new users, it is highly recommended to install [Anaconda](https://www.continuum.io/downloads). Anaconda conveniently installs Python, the Jupyter Notebook, and other commonly used packages for scientific computing and data science.

Use the following installation steps:
- Download [Anaconda](https://www.continuum.io/downloads) (better Anaconda’s latest Python 3 version (currently Python 3.5)).
- Install the version of Anaconda which you downloaded, following the instructions on the download page.

If you are an experienced Python user, you may wish to install Jupyter using Python’s package manager, pip, instead of Anaconda:
- Update your pip: `pip3 install --upgrade pip`
- Then install the Jupyter Notebook using: `pip3 install jupyter`

To run the notebook:
```
jupyter notebook
```
###Excercises:
1. [Running the code](https://nbviewer.jupyter.org/github/jupyter/notebook/blob/master/docs/source/examples/Notebook/Running%20Code.ipynb)
2. Check out [ipython documentation webpage](https://github.com/ipython/ipython)
3. Convert previous analyses to Python (DIY for those who wish)

## Acknowledgements

Huge thanks to [Anton Antonov](https://github.com/tonytonov) and [Omar Wagih](https://github.com/omarwagih) whose materials on Rmarkdown were adapted for this tutorial.
