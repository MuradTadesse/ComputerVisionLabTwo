function resize_image(img, new_width)
    [height, width, ~] = size(img);
    new_height = round(height * new_width / width);
    resized_img = imresize(img, [new_height new_width]);
    figure;
    subplot(1, 2, 1);
    imshow(img);
    title('Original Image');
    subplot(1, 2, 2);
    imshow(resized_img);
    title('Resized Image');
end

