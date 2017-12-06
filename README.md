 This project is according the project https://github.com/BobLiu20/Classification_Nets   
 
### What
Testing all cls nets in cifar10 in order to compare them.  

[result Blog](http://www.enjoyai.site/2017/12/04/CAFFE-Net-Result/)

### How to use

##### 1. Prepare cifar data
   
  ./get_create_cifar10.sh   
  
  Please set CAFFE env to caffe's folder and then run script.    

##### 2. Training
  Enter one of nets. And then run:    
  ```
  ./start_train.sh testNet   
  ```
  eg:    
  ```
  ./start_train.sh GoogleNet   
  ```
##### 3. Cal  time
	 Enter one of nets. And then run:    
  ```
  ./caffe_time.sh testNet   
  ```
  eg:    
  ```
  ./caffe_time.sh GoogleNet   
  ```

### Nets
  Kind in mind, it is not any augmentation in training.    
  The image size of cifar10 is 32x32.    
   
  cuda: 8.0    
  nvidia: GTX1080 ti (Total memory is 11GB)    
  system: ubuntu 16.04 in docker    

* LeNet    
  The size of model: 351KB    
  The accuracy of testing is 0.7840 after 64000 Iterations.    
  The time of training is 0.5 hours in GTX1080.    
  The time of predict is 0.84 ms. (one image with 32x32)    

* BN-LeNet: Batch Normalization LeNet    
  The size of model: 352KB    
  The accuracy of testing is 0.7985 after 64000 Iterations.    
  The time of predict is 0.76 ms. (one image with 32x32)    

* AlexNet    
  The size of model: 3MB    
  The accuracy of testing is 0.7243 after 64000 Iterations.    
  The time of training is 10 mins in GTX1080.    
  The time of predict is 0.65 ms. (one image with 32x32)    

* SqeezeNet_v1.1    
  The size of model: 2.8M    
  The accuracy of testing is 0.8030 after 64000 Iterations.    
  The time of predict is 2.2 ms. (one image with 32x32)   

* NetworkInNetwork: NIN    
  The size of model: 25MB   
  The accuracy of testing is 0.8411 after 64000 Iterations.    
  The time of training is 40 mins in GTX1080.    
  The time of predict is 1.8 ms. (one image with 32x32)    

* ResNet20    
  The size of model: 1.1MB    
  The accuracy of testing is 0.8303 after 64000 Iterations.    
  The time of predict is 4.2 ms. (one image with 32x32)    

* ResNet32    
  The size of model: 1.8MB    
  The accuracy of testing is 0.8741 after 64000 Iterations.    
  The time of predict is 7.8 ms. (one image with 32x32)    

* ResNet56    
  The size of model: 3.4MB.    
  The accuracy of testing is 0.8830 after 64000 Iterations.    
  The memory usage of GPU is 3.8GB in training. (batch size is 128).    
  The time of training is 15 hours in GTX1080.    
  The time of predict is 16.3 ms. (one image with 32x32)   

* WRN28_10: [Wide Residual Networks](http://arxiv.org/abs/1605.07146)    
  The size of model: 140MB.    
  The accuracy of testing is 0.8905 after 60000 Iterations.    
  The memory usage of GPU is 9.9GB in training. (batch size is 128).    
  The time of training is 22.5 hours in GTX1080 ti.    
  The time of predict is 13.0 ms. (one image with 32x32)    


* GoogLeNet    
  The size of model: 25MB.    
  The accuracy of testing is 0.7865 after 64000 Iterations.    
  The memory usage of GPU is 1.3GB in training. (batch size is 128).    
  The time of training is 1 hours in GTX1080 ti.    
  The time of predict is 7.2 ms. (one image with 32x32)    


* DenseNet: (Ref to [here](https://github.com/liuzhuang13/DenseNetCaffe))    
  The size of model: 4MB.    
  The accuracy of testing is 0.9195 after 64000 Iterations.    
  The memory usage of GPU is 7.9GB in training. (batch size is 32+32).    
  The time of training is 3.5 hours in GTX1080 ti.    
  The time of predict is 12.95 ms. (one image with 32x32)    




