---
tags: cocoapods, background, nsoperationqueue
languages: objc
---

# Filtered Images

## Instructions

  1. Open up the project! We are going to filter an image of my friend Mickey climbing up a mountain. I took this with my iPhone so it's just a regular picture that a anyone could take. You'll notice it is a jpg. To deal with jpgs we have to use the fullname of the file when you grab the `UIImage`. 
  2. There are three buttons. Using the [UIImage Filter](https://github.com/dasmer/UIImage-Filter) cocoapod, filter the image wtih the approprite filter for the button tapped. (BTW this cocoapod was made by Das!). 
  3. You'll notice it's a biiiiit slow. Definitely blocks the main thread. Go ahead and dump that on a background queue.
  4. Add in a Loading screen with [MBProgressHUD](https://github.com/jdg/MBProgressHUD).


## Make it Right

  1. To be honest this is a bit overkill for such a small background operation...but go ahead and make an NSOperation Subclass and put the operation in the subclass.