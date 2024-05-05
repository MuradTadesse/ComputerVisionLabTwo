function convert_to_grayscale(img)
    gray_avg = mean(img, 3);
    gray_lum = 0.299*img(:,:,1) + 0.587*img(:,:,2) + 0.114*img(:,:,3);
    gray_desat = (max(img, [], 3) + min(img, [], 3)) / 2;
    figure;
    subplot(2, 2, 1);
    imshow(img);
    title('Original Image');
    subplot(2, 2, 2);
    imshow(gray_avg);
    title('Average Grayscale');
    subplot(2, 2, 3);
    imshow(gray_lum);
    title('Luminosity Grayscale');
    subplot(2, 2, 4);
    imshow(gray_desat);
    title('Desaturation Grayscale');
end

