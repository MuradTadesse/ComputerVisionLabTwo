function metadata = extract_metadata(filename)
    info = imfinfo(filename);
    metadata = info;
    disp(metadata);
end

