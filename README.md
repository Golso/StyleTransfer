# DeepTransfer - app for style transfer # 
Simple image conversion app created with Python 
# Table of Contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Example of trained models](#example-of-trained-models)
* [Sources](#sources)
# General info
![DeepAnimation](https://user-images.githubusercontent.com/36167926/131871088-2422205e-d3d6-4174-b7bf-cb9dc4ca3be3.gif)

Neural style transfer is a technique used for styling images in art style choosen by us. It was presented in "A Neural Algorithm of Artistic Style" by Leon A. Gatys et al. Technique is using deep convolutional neural nets for styling chosen image. The only downside is that the technique is iterative what is making it computational demanding. One of the solutions was to train deep neural network which is specialized in style transfer and which can make it in one pass of data throught the net. 

This solution was used in the project what speeded up style transfer by 1000 times in comparison to Gatys method. Network was trained on COCO 2014 dataset. Main downside of this solution is that one net is styling image in only one art style chosen during training of network. 
# Technologies
* Python 3
* TensorFlow 2.5.0
* Keras
* Tkinter
# Example of trained models
![examplesOfTransfer](https://user-images.githubusercontent.com/36167926/131230806-dda4b4ca-2f9b-4810-86c4-0c392f62cda0.png)
# Sources
This app is inspired by:
* "A Neural Algorithm of Artistic Style" by Leon A. Gatys, Alexander S. Ecker, Matthias Bethge (https://arxiv.org/pdf/1508.06576.pdf)
* "Perceptual Losses for Real-Time Style Transfer
and Super-Resolution" by Justin Johnson, Alexandre Alahi and Li Fei-Fei (https://arxiv.org/pdf/1603.08155.pdf)
* TensorFlow Neural Style Transfer tutorial (https://www.tensorflow.org/tutorials/generative/style_transfer)
