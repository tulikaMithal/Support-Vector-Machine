function [w,pred] = sup_vec_mac(x,y,ts)
%x = double(initial_matrix(:,1:2000));
%y = double(initial_matrix(:,2001));
m=size(x,1);
z=ones(m,1);
l=x;
l=[l z];
for i=1:size(x,1)
     for j=1:size(x,1)
	    e(i,j)=sum(l(j,:).*l(i,:));
	end;
end	

a=y'/e;
w=a*l;
for i=1:size(ts,1)
 t=sum(w(1:size(x,2)).*ts(i,:));
 if t>-w(size(x,2)+1)
  pred(i)=1;
 else
  pred(i)=-1;
 end;
end

