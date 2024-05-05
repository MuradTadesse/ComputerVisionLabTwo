function import_and_display_images(directory)
  % Get a list of image files in the directory
  image_files = dir(fullfile(directory, '*.jpg;*.png;*.bmp'));

  % Loop through each image file
  for i = 1:length(image_files)
    filename = image_files(i).name;
    try
      % Read the image
      img = imread(fullfile(directory, filename));
    catch err
      disp(['Error reading image: ' filename]);
      continue;
    end

    % Display the image with different colormaps
    figure(i);
    subplot(2,2,1); imshow(img); title('Original');
    subplot(2,2,2); imshow(rgb2gray(img)); title('Grayscale');
    subplot(2,2,3); imshow(hot(size(img))); title('Hot Colormap');
    subplot(2,2,4); imshow(jet(size(img))); title('Jet Colormap');
  end
end




% Colormaps affect visual perception by highlighting different aspects of the image data.
% Grayscale removes color information, emphasizing intensity variations.
% Hot and Jet colormaps use a color gradient to represent intensity levels, enhancing certain ranges.

