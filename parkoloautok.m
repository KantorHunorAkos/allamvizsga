clear all;

p = menu("Stratégia", "meek", "prudent", "optimistic");

i = 1;
lot = [];

switch(p)
    case 1
        while i < 100
            % meek esetén csak nö az i, mert az jelöli az utolsó autó helyét 
            i = i+1;
            % az idö amennyit parkol az auto
            t = round(rand()*20)+20;
            % a parkoló autok sorora
            lot(i) = t;
            % mindenkinek csökken eggyel az ideje
            lot(:) = lot(:)-1;
            % elmegy az az auto amelyiknek lejárt az ideje
            for j = 1:length(lot)
                if lot(j) < 1
                    lot(j) = 1;
                end
            end
            x = 1:length(lot);
            plot(x,lot,'r*');
            % hold on;
            pause(1/50);
        end
    case 2
        while i < 100
            i = i+1;
            % prudent
            pos = length(lot);
            while pos > 0
                if lot(pos) < 2
                    break;
                end
                pos = pos-1;
            end
            if pos == 0
                pos = length(lot)+1;
            end

            % az idö amennyit parkol az auto
            t = round(rand()*20)+20;
            % a parkoló autok sorora
            lot(pos) = t;
            % mindenkinek csökken eggyel az ideje
            lot(:) = lot(:)-1;
            % elmegy az az auto amelyiknek lejárt az ideje
            for j = 1:length(lot)
                if lot(j) < 1
                    lot(j) = 1;
                end
            end
            x = 1:length(lot);
            plot(x,lot,'r*');
            % hold on;
            pause(1/50);
        end
    case 3
        while i < 100
            i = i+1;
            % optimistic
            pos = 1;
            while pos <= length(lot)
                if lot(pos) < 2
                    break;
                end
                pos = pos+1;
            end
            if pos == length(lot)
                pos = length(lot)+1;
            end

            % az idö amennyit parkol az auto
            t = round(rand()*20)+30;
            % a parkoló autok sorora
            lot(pos) = t;
            % mindenkinek csökken eggyel az ideje
            lot(:) = lot(:)-1;
            % elmegy az az auto amelyiknek lejárt az ideje
            for j = 1:length(lot)
                if lot(j) < 1
                    lot(j) = 1;
                end
            end
            x = 1:length(lot);
            plot(x,lot,'r*');
            % hold on;
            pause(1/50);
        end
end