clear
clf

[x,FS]=audioread('C:\Users\Administrator\Music\Cyberpunk 2077\Rosa Walton,Hallie Coggins - I Really Want to Stay At Your House.flac');
out=real(saleh(x));
figure(1)
plot(abs(x(:,1)),abs(out(:,1)));
xlabel("input")
ylabel("output")
title("AM/AM")

audiowrite('C:\Users\Administrator\Music\Cyberpunk 2077\I Really Want to Stay At Your House.flac',out,FS);
