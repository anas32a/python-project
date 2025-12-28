function lum = luminance(Img)
    lum = mean(Img(:));
end

function c = constrast(Img)
    c = var(double(Img(:)));
end

function p = profondeur(Img)
    p = max(Img(:));
end

function ImgOut = Ouvrir(Img)
    ImgOut = Img;
end
