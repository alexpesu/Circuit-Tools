function am_condensator_intensitate_miliFarad(C,func,coef,alfa,f)
  [re,im] = time_to_complex(func,coef,alfa);
  intensitate_complex = re + i * im;
  R = 1/(i * pi * 2 * f * C * 10^-3);
  re = re * R;
  im = im * R;
  [coeff, alfa] = complex_to_time(re,im);
  disp("VALOAREA MAXIMA A TENSIUNII ESTE"),disp(coeff);
  disp("VALOAREA EFECTIVA A TENSIUNII ESTE"),disp(coeff/sqrt(2));
  disp("FAZA INITIALA A TENSIUNII ESTE"),disp(alfa);
  tensiune_complex = re + i * im;
  puterea_complexa = intensitate_complex * tensiune_complex; 
  disp("PUTEREA COMPLEXA ESTE"),disp(puterea_complexa); 
  disp("PUTEREA APARENTA ESTE"),disp(abs(puterea_complexa));  
  disp("PUTEREA ACTIVA ESTE"),disp(0);
  disp("PUTEREA REACTIVA ESTE"),disp(-(abs(puterea_complexa))); 
endfunction
