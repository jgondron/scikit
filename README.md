Docker (on Windows) based setup for http://scikit-learn.org/stable/auto_examples/classification/plot_classifier_comparison.html

1. Install docker: https://docs.docker.com/docker-for-windows/install/
1. Share the drive where these files are located: https://docs.docker.com/docker-for-windows/#docker-settings
1. Build the image: ```docker build -t scikit .```
1. Run the example plotter: ```docker run -v %cd%:/mnt/scikit --rm -i -t scikit python /mnt/scikit/plot_classifier_comparison.py```
1. Check the output: ```output\plot_classifier_comparison.png```
