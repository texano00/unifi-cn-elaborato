function [L,U]=scomposizioneLU(A)
    [m,n]=size(A);
    if m~=n
        error('matrice non quadrata');
    end
    L=eye(n);
    U=A;
    
    for k=1:n
        [pivot, m]=max(abs(U(k:n,k)));
        if pivot==0
            error('Errore: Matrice singolare');
        end
    
        m=m+k - 1;
        if m~=k
            if k >= 2
                L([k,m],1:k - 1) = L([m,k],1:k - 1);
            end
        end
    
        L(k+1:n,k)=U(k+1:n,k)/U(k,k);
        U(k+1:n,:)=U(k+1:n,:) - L(k+1:n,k)*U(k,:);
    end
    L
    U
end