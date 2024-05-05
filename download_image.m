function display_images(urls)
  % Loop through the URLs and download the images
  for i = 1:length(urls)
    try
      % Download the image
      image_data = webread(urls{i});

      % Determine the image format
      format = imfinfo(image_data);
      format = format.Format;

      % Save the image locally
      [~, name, ext] = fileparts(urls{i});
      image_path = strcat(name, ".", ext);
      imwrite(image_data, image_path);

      % Display the image
      image = imread(image_path);
      figure;
      imshow(image);
      title(strcat("Image from URL: ", urls{i}));
    catch
      % Handle any errors that occur during the download process
      disp(strcat("Error downloading image from URL: ", urls{i}));
    end
  end
end
