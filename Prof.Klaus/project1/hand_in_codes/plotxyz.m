%%
if  ishandle(axHnd1)
    set(bodyx1,'xdata',t,'ydata',x1)
    set(bodyx2,'xdata',t,'ydata',x2)
    set(bodyx3,'xdata',t,'ydata',x3)

    drawnow;
else
    error('END')
end
%%
if  ishandle(axHnd2)
    set(bodyx4,'xdata',tt,'ydata',x)

    drawnow;
else
    error('END')
end

%%
if  ishandle(axHnd3)
    set(bodyx5,'xdata',t,'ydata',x1_e)
    set(bodyx6,'xdata',t,'ydata',x2_e)
    set(bodyx7,'xdata',t,'ydata',x3_e)

    drawnow;
else
    error('END')
end