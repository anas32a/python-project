disp("=== Testing black_and_white ===")

img = image_noire(3,4);
assert(isequal(img, zeros(3,4)))
disp(" image_noire")

img = image_blanche(2,3);
assert(isequal(img, ones(2,3)))
disp(" image_blanche")

img = creerImgBlancNoir(2,2);
expected = [0 1; 1 0];
assert(isequal(img, expected))
disp(" creerImgBlancNoir")

img = [0 1; 1 0];
assert(isequal(negatif(img), [1 0; 0 1]))
disp(" negatif")

disp("=== Testing gris_op ===")

img = [0 100; 255 50];
assert(isequal(inverser(img), [255 155; 0 205]))
disp(" inverser")

img = [1 2 3];
assert(isequal(flipH(img), [3 2 1]))
disp(" flipH")

img1 = ones(2,2);
img2 = zeros(1,2);
res = posV(img1, img2);
assert(all(size(res) == [3 2]))
disp(" posV")

img1 = ones(2,2);
img2 = zeros(2,1);
res = posH(img1, img2);
assert(all(size(res) == [2 3]))
disp(" posH")

disp("=== Testing gris ===")

img = [0 100; 200 255];
assert(luminance(img) == mean(img(:)))
disp(" luminance")

img = [10 10; 10 10];
assert(constrast(img) == 0)
disp(" constrast")

img = [1 2; 3 4];
assert(profondeur(img) == 4)
disp(" profondeur")

disp("=== Testing RGB ===")

img = initImageRGB(2,3);
assert(all(size(img) == [3 2 3]))
disp(" initImageRGB")

hflip = symetrieH(img);
assert(isequal(hflip, img(:, end:-1:1, :)))
disp(" symetrieH")

vflip = symetrieV(img);
assert(isequal(vflip, img(:, :, end:-1:1)))
disp(" symetrieV")