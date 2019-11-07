function [Q, R]= a13(A)  %entrée =matrice a
 
[m,n]= size(A); %permet de donner les dimensions de la matrice
Q=zeros(m,n); %on remplit la matrice Q de zéros de meme dim que A
 
Q(:,1)=A(:,1); %initialisation de d1
Q(:,1)= Q(:,1) / norm(Q(:,1),2) %on trouve e1 
 
 
for k=2:n %on part de deux car on a déjà 1; boucle pour parcourir le nombre de colonnes
    
    Q(:,k)= A(:,k);
    
    for i=1 : (k-1) %boucle pour enlever les sommes (on fait moins, moins, moins, etc jusque k-1)
        
        Q(:,k) = Q(:,k) - ( (transpose(Q(:,i)) * A(:,k)) / (transpose(Q(:,i)) * Q(:,i) )  * Q(:,i));
    
    end
    
    Q(:,k)=Q(:,k) / norm(Q(:,k),2) %trouve la e(kième) 
end
 
 
R = Q'*A; 
