clear all;

i = 1;
lot = [];
while i < 1000
    t = round(rand()*20)+20;
    car = [i, t];
    i = i+1;
    lot = [lot;car];
    lot(:,2) = lot(:,2)-1;
    j = 1;
    while j < length(lot)
        if lot(j,2) < 1
            lot(j,:) = [];
            j = j-1;
        end
        j = j+1;
    end
    plot(lot(:,1),lot(:,2),'r*');
    %hold on;
    pause(1/50);
end