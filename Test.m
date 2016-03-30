function Synthesizer(ORIGSOUND, X, Var, Characters)
H = uicontrol('Style','Popup','Position',[0 0 100 50],'String','guitar|clarinet|trumpet|tone');

END = uicontrol('Style', 'Pushbutton', 'Position', [175 0 225 75],'String','END', 'Callback',...
    {@EndButton});
END.FontSize = 15;
END.BackgroundColor = [0.9 0.9 0.9];
END.FontName = 'Arial';



for i =  1:13
    for j = 1:5
        
        [width, height, color] = ButtonControl(i,j);
        if(j == 1)
            temp = uicontrol('Style','Pushbutton','Position',[width height 80 40],'String',Characters(i,:),'Callback', ...
                {@PressButton, i, j});
        elseif (j == 2)
            temp = uicontrol('Style','Pushbutton','Position',[width (height + 40) 80 40],'String','1/2','Callback', ...
                {@PressButton, i, j});
        elseif(j == 3)
            temp = uicontrol('Style','Pushbutton','Position',[width (height + 40 * 2) 80 40],'String','1/4','Callback', ...
                {@PressButton, i, j});
        elseif(j == 4)
            temp = uicontrol('Style','Pushbutton','Position',[width (height + 40 * 3) 80 40],'String','1/8','Callback', ...
                {@PressButton, i, j});
        else
            temp = uicontrol('Style','Pushbutton','Position',[width (height + 40 * 4) 80 40],'String','1/16','Callback', ...
                {@PressButton, i, j});
        end
        
        if (strcmp(color,'black'))
            temp.BackgroundColor = [0 0 0];
            temp.ForegroundColor = [1 1 1];
        elseif(strcmp(color,'gray'))
        else
            temp.BackgroundColor = [1 1 1];
            temp.ForegroundColor = [0 0 0];
        end
    end
end

    function[width, height, color] = ButtonControl(index, node)
        
        upper = true;
        if(index == 2 || index == 4 || index == 7 || index == 9 || index == 12)
            upper = false;
        end
        
        % set height
        if(upper)
            height = 100;
        else
            height = 300;
        end
        
        % set width
        width_arr  = [0 50 80 130 160 240 290 320 370 400 480 530 560];
        
        width = width_arr(index);
        
        % Set a color
        if(~upper)
            color = 'black';
        else
            if(node == 1)
                color = 'white';
            else
                color ='gray';
            end
        end
    end


%
% var : This must be coorresponding to the indices of Var vector
%     : Input 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ,12 or 13
% node : Represent the length of the node
%      : Input 1, 2 or 4
%        1. Whole 2. Half 4. Quoter
%
%
%
%

    function PressButton(hObject, evt, var_in, node_num)
        node = [1 2 4 8 16];
        I = get(H,'Value');
        if (I == 4)
            Z = cos(2 * pi * Var(var_in) * [1:32668]/7999);
            Z = [Z zeros(1,100)];
            Z = Z';
        else
            Z = ORIGSOUND(:,var_in,I);
        end
        
        
        Non_victim = linspace(1, 32668, floor(32668/ node(node_num)));
        New_Z = [];
        
        for i = 1: length(Non_victim)
            New_Z =[New_Z Z(i)];
        end
        
        Z = New_Z;
        %Z = Z (1:floor(32668/ node(node_num)));
        
        X=[X New_Z];
        soundsc(New_Z,44100);
        clear Z;
        
    end

    function EndButton(hObject, evt)
        soundsc(X,44100);
        close;
        save proj3.mat X;
    end

end


