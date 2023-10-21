%podatki za kroznico
koti = linspace(0, 2 * pi ,100);
tocke_na_kroznici =  @(kot) [0.5 + 0.5 * sin(kot);0.5+ 0.5 * cos(kot)];
kroznica = tocke_na_kroznici(koti);
y = kroznica(1,:);
x = kroznica(2,:);

%podatki za nakljucne tocke
st_tock=1000;
x_kvadrat = rand(1, st_tock);
y_kvadrat = rand(1, st_tock);
sredisce_x = 0.5;
sredisce_y = 0.5;
polmer_kroga = 0.5;
razdalja = sqrt((x_kvadrat - sredisce_x).^2 + (y_kvadrat - sredisce_y).^2);
tocke_v_krogu = [x_kvadrat(razdalja <= polmer_kroga); y_kvadrat(razdalja <= polmer_kroga)];
tocke_v_kvadratu = [x_kvadrat; y_kvadrat];
tocke_zunaj_kroga = [x_kvadrat(razdalja > polmer_kroga); y_kvadrat(razdalja > polmer_kroga)];

hold on;
%izris tock v in znotraj kroznice
plot(tocke_v_krogu(1,:),tocke_v_krogu(2,:),'r.')
plot(tocke_zunaj_kroga(1,:),tocke_zunaj_kroga(2,:),'k.')


hold off;
