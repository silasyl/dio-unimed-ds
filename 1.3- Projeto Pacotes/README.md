# image_processing

Description. 
The package image_processing is used to:
	Processing:
		- Histogram matching
		- Structural similarity
		- Resize image
	Utils:
		- Read image
		- Save image
		- Plot image
		- Plot result
		- Plot histogram

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install image_processing

```bash
pip install image_processing
```

## Usage

```python
from image_processing.utils import io, plot
from image_processing.processing import combination, transformation
io.read_image(path, is_gray)
io.save_image(image, path)
plot.plot_image(image)
plot.plot_result(*args)
plot.plot_histogram(image)
combination.find_difference(image1, image2)
combination.transfer_histogram(image1, image2)
transformation.resize_image(image, proportion)
```

## Author
Silas Liu

## License
[Silas Data](https://www.silasdata.com/)
