Dev setup for http://scikit-learn.org/stable/auto_examples/classification/plot_classifier_comparison.html
Install docker: https://docs.docker.com/docker-for-windows/install/
Share the drive where these files are located: https://docs.docker.com/docker-for-windows/#docker-settings
Build the image: docker build -t scikit .
Run the example plotter: docker run -v %cd%:/mnt/scikit --rm -i -t scikit python /mnt/scikit/plot_classifier_comparison.py
