function f = GammCorr(I,gamma)
f = uint8( 255 * (double(I)/255).^(gamma) );
end
