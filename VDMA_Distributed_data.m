% plot Distributed Data
clf

l= length(ACS1);
hours=zeros(1,l);
for i = 1:l
    hours(i)=i;
end
%subplot(2,2,1)  
% t1=plot(hours,ACS1,'-');
% t1.Color='r';
% set(t1,'LineWidth',1.2);
hold on
t2=plot(hours,ADVS1,'-');
t2.Color='b';
set(t2,'LineWidth',1.2);
hold on
hline = refline([0 10]);
hline.Color = 'k';
hold on
hline = refline([0 20]);
hline.Color = 'k';
hold on
hline = refline([0 30]);
hline.Color = 'k';
hold on
hline = refline([0 40]);
hline.Color = 'k';
hold on
hline = refline([0 50]);
hline.Color = 'k';
hold on
hline = refline([0 60]);
hline.Color = 'k';
hold on
hline = refline([0 70]);
hline.Color = 'k';
hold off    
xlabel('Time Series (Hours)') 
ylabel('Distributed Data')
legend('Data which is Distributed','Location','northwest')
title('VDMA Sector 1 Distributed Data')

 Consumed_Data = uicontrol('Style', 'pushbutton', 'String', 'View Comsumed Data',...
        'Position', [50 10 150 20],...
        'Callback', 'VDMA_Consumed_data'); 

     Distributed_Data = uicontrol('Style', 'pushbutton', 'String', 'View Distributed Data ',...
        'Position', [350 10 150 20],...
        'Callback', 'VDMA_Distributed_data');  
    
     Dis_Con = uicontrol('Style', 'pushbutton', 'String', 'View Both',...
        'Position', [650 10 150 20],...
        'Callback', 'VDMA_Combined_Both_data');  
    
     Back = uicontrol('Style', 'pushbutton', 'String', 'Back ',...
        'Position', [950 15 150 20],...
        'Callback', 'GUI_NetLeak_Main_Page');  
    
     Main_page =uicontrol('Style', 'pushbutton', 'String', 'Main Menu',...
        'Position', [1250 15 150 20],...
        'Callback', 'button_testing');
