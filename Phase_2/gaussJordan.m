function [method_name, x] = gaussJordan(a, b)
method_name = 'Gaussian-Jordan';
length = size(a, 1);
b = transpose(b);
augmented =[a, b];
widthAug=size(augmented,2);
x=zeros(length,1);
 for i= 1:length
     pivot= augmented(i,i);
      for j =1:widthAug
         augmented(i,j)= augmented(i,j)/pivot;
      end
     for j =1:length
         if i~=j
           augmented(j,:) = augmented(j,:) - augmented(i,:).*augmented(j,i)./augmented(i,i);
        end
    end
 end
for i =1:length
    x(i) = augmented(i,widthAug);
end
x = transpose(x);
end
             


