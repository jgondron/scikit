Docker based setup for scikit http://scikit-learn.org/stable/index.html and mxnet https://mxnet.apache.org/

# Windows
1. Install docker: https://docs.docker.com/docker-for-windows/install/
1. Share the drive where these files are located: https://docs.docker.com/docker-for-windows/#docker-settings
1. Build the image: ```docker build -t scikit .```
1. Run the example plotter: ```docker run -v %cd%:/mnt/scikit --rm -i -t scikit python /mnt/scikit/plot_classifier_comparison.py```
1. Check the output: ```output\plot_classifier_comparison.png```
1. Run a my_script.py in a different directory: ```docker run -v /path/to/script:/mnt/scikit --rm -i -t scikit python /mnt/scikit/my_script.py```

# OSX

1. Install docker: ```brew install docker```
1. Build the image: ```docker build -t scikit .```
1. Run the example plotter: ```docker run -v $PWD:/mnt/scikit --rm -i -t scikit python /mnt/scikit/plot_classifier_comparison.py```
1. Check the output: ```output\plot_classifier_comparison.png```
1. Run a my_script.py in a different directory: ```docker run -v /path/to/script:/mnt/scikit --rm -i -t scikit python /mnt/scikit/my_script.py```

# Notes
Since there is no window manager, you will likely need to modify your script to render figures to an image file, ex:

```
import matplotlib
matplotlib.use('Agg')
# Do things
figure.savefig('/mnt/scikit/plot_classifier_comparison.png')
```
