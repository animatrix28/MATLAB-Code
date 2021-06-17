function [Y] = euler_ivp(f, y0, x_range, h)
    %{
    finds solutions to the given X values of the partial differential equations of the form:
    dy/dx = f(x, y), provided it is an initial value problem
    
    :param f:       the function, f(x, y)
    :param y0:      initial value
    :param x_range: A list containing the initial and final values of the range
    :param h:       the step size
    
    :return:        the Y values
    %}
    
    Y(1) = y0;
    X = x_range(1):h:x_range(2);
    for i=1:length(X)-1
        Y(i+1) = Y(i) + h*f(X(i), Y(i));  
    end
    
    plot(X, Y, "*--") % plotting numeric plot
    
    syms x x0 y0
    u = dsolve(strcat('Dy=', string(sym(f))), 'y(x0)=y0', 'x');
    u = subs(u, [x, x0, y0], {X, x_range(1), Y(1)});

    hold on
    plot(X, u, 'r')
    legend(["calculated", "actual"])
    
end