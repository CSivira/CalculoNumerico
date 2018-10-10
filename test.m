x = 0*ones(7,1)

for z=2:1:8
  x(z-1)=condicion(z)
end

dominio = 2:1:8 %Genera un vector de uno en uno de dos hasta 15
plot1 = plot(dominio,x)
legend('condicion vs n')