function cropped_img = crop_image(img, top_left, bottom_right)
    cropped_img = img(top_left(2):bottom_right(2), top_left(1):bottom_right(1), :);
    figure;
    subplot(1, 2, 1);
    imshow(img);
    title('Original Image');
    subplot(1, 2, 2);
    imshow(cropped_img);
    title('Cropped Image');
end

