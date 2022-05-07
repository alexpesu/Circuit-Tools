function am_bobina_tensiune_miuH(L,func,coef,alfa,f)
  [re,im] = time_to_complex(func,coef,alfa);
  tensiune_complex = re + i * im;
  R = i * pi * 2 * f * L * 10^-6;
  re = re / R;
  im = im / R;
  [coeff, alfa] = complex_to_time(re,im);
  disp("VALOAREA MAXIMA A INTENSITATII ESTE"),disp(coeff);
  disp("VALOAREA EFECTIVA A INTENSITATII ESTE"),disp(coeff/sqrt(2));
  disp("FAZA INITIALA A INTENSITATII ESTE"),disp(alfa);
  intensitate_complex = re + i * im;
  puterea_complexa = intensitate_complex * tensiune_complex; 
  disp("PUTEREA COMPLEXA ESTE"),disp(puterea_complexa); 
  disp("PUTEREA APARENTA ESTE"),disp(abs(puterea_complexa));  
  disp("PUTEREA ACTIVA ESTE"),disp(0);
  disp("PUTEREA REACTIVA ESTE"),disp(abs(puterea_complexa)); 
endfunction