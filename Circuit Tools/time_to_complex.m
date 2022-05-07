function [re,im] = time_to_complex(func,coef,init)
  if strcmp('cos',func)
    initx = init + pi/2;
  endif
  
  coef = coef / sqrt(2);
  
  re = coef * cos(init);
  im = coef * sin(init);
  
endfunction