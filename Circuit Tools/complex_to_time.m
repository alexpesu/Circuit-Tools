function [coef, alfa] = complex_to_time(real, imag)
    alfa = angle(real + imag * i);
    val_efectiva = sqrt(real^2 + imag^2);
    coef = val_efectiva * sqrt(2);
end
