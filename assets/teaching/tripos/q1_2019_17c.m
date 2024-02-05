function q1_2019_17c
    f = figure('position', [100 100 850 850]);
    ax = axes('Parent',f,'position',[0.025 0.2  0.95 0.75]);
    update(2, ax);
    
    b = uicontrol('Parent',f,'Style','slider','Position',[80,50,690,25],...
              'value',2, 'min',-2, 'max',2);
    bgcolor = f.Color;
    bl1 = uicontrol('Parent',f,'Style','text','Position',[50,50,25,25],...
                'String','-2','BackgroundColor',bgcolor);
    bl2 = uicontrol('Parent',f,'Style','text','Position',[780,50,25,25],...
                'String','+2','BackgroundColor',bgcolor);
    bl3 = uicontrol('Parent',f,'Style','text','Position',[380,17,100,25],...
                'String','λ','BackgroundColor',bgcolor);
            
    b.Callback = @(es,ed) update(es.Value, ax); 
end

function update(lam, ax)
    r = linspace(1, 10, 15);

    for theta = linspace(0, 2*pi, 30)
        ur = (1-r.^(-2)).*cos(theta);
        ut = 2*lam*r.^(-1) - (1+r.^(-2)).*sin(theta);

        x = r*cos(theta);
        y = r*sin(theta);
        u = ur*cos(theta) - ut*sin(theta);
        v = ur*sin(theta) + ut*cos(theta);

        quiver(ax, x, y, u, v, 'color', 'red', 'autoscalefactor', 0.3, 'linewidth', 1.1);
        hold on;
    end
    
    if(abs(lam) > 1)
        plot(ax, 0, sign(lam)*(abs(lam) + sqrt(lam^2-1)), 'b.', 'markersize', 20);
    else
        plot(ax, cos(asin(lam)), lam, 'b.', 'markersize', 20);
        plot(ax, cos(pi-asin(lam)), lam, 'b.', 'markersize', 20);
    end

    xlim([-5 5]);
    ylim([-5 5]);
    pbaspect([1 1 1]);
    
    set(ax, 'visible', 'off');
    
    set(ax,'xtick',[]);
    set(ax,'ytick',[]);
    
    hold(ax, 'off');
end