function resized_image = resize_image(image, new_width, new_height, method)
  % Resize the image using the specified interpolation method
  switch method
    case "nearest"
      resized_image = imresize(image, [new_height, new_width], "nearest");
    case "bilinear"
      resized_image = imresize(image, [new_height, new_width], "bilinear");
    case "bicubic"
      resized_image = imresize(image, [new_height, new_width], "bicubic");
    otherwise
      error("Invalid interpolation method");
  end

  % Display the original and resized images
  figure;
  subplot(1, 2, 1);
  imshow(image);
  title("Original Image");

  subplot(1, 2, 2);
  imshow(resized_image);
  title(strcat("Resized Image");
