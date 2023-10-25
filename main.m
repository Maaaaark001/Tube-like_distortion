clear
clf

[x,FS]=audioread('C:\Users\Administrator\Music\Cyberpunk 2077\Rosa Walton,Hallie Coggins - I Really Want to Stay At Your House.flac');
level_max=max(max(abs(x)));
out=real(saleh(x./level_max));
out=out.*level_max;
figure(1)
plot(abs(x(:,1)),abs(out(:,1)));
xlabel("input")
ylabel("output")
title("AM/AM")

audiowrite('C:\Users\Administrator\Music\Cyberpunk 2077\I Really Want to Stay At Your House.flac',out,FS);
