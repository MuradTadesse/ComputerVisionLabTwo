function adjusted_img = adjust_pixels(img, scale, offset)
    adjusted_img = img * scale + offset;
    figure;
    subplot(1, 2, 1);
    imshow(img);
    title('Original Image');
    subplot(1, 2, 2);
    imshow(adjusted_img);
    title('Adjusted Image');
end

