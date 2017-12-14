function manualMode(source,callbackdata)
disp('Manual Mode')

robot=getappdata(gcf,'robotInitial');
map=getappdata(gcf,'mapInitial');

g_2=uicontrol('style','pushbutton','Position',[5 5 30 30],'String','Í£','Callback','robot.gui.mode=0;');
g_3=uicontrol('style','pushbutton','Position',[45 5 30 30],'String','Ç°','Callback','robot.gui.mode=1;');
g_4=uicontrol('style','pushbutton','Position',[85 5 30 30],'String','ÍË','Callback','robot.gui.mode=2;');
g_5=uicontrol('style','pushbutton','Position',[125 5 30 30],'String','×ó','Callback','robot.gui.mode=3;');
g_6=uicontrol('style','pushbutton','Position',[165 5 30 30],'String','ÓÒ','Callback','robot.gui.mode=4;');
