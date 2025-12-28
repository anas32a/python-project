function ImgInv = inverser(Img)
    ImgInv = 255 - Img;
end

function ImgFlip = flipH(Img)
    ImgFlip = Img(:, end:-1:1);
end

function res = posV(Img1, Img2)
    res = [Img1; Img2];
end

function res = posH(Img1, Img2)
    res = [Img1 Img2];
end
