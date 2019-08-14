function varargout = serial_aq(varargin)
% SERIAL_AQ MATLAB code for serial_aq.fig
%      SERIAL_AQ, by itself, creates a new SERIAL_AQ or raises the existing
%      singleton*.
%
%      H = SERIAL_AQ returns the handle to a new SERIAL_AQ or the handle to
%      the existing singleton*.
%
%      SERIAL_AQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SERIAL_AQ.M with the given input arguments.
%
%      SERIAL_AQ('Property','Value',...) creates a new SERIAL_AQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before serial_aq_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to serial_aq_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help serial_aq

% Last Modified by GUIDE v2.5 24-Aug-2016 18:26:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @serial_aq_OpeningFcn, ...
                   'gui_OutputFcn',  @serial_aq_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before serial_aq is made visible.
function serial_aq_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to serial_aq (see VARARGIN)

% Choose default command line output for serial_aq
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
%% �ѽ��յ��ַ���
% strRec = '';
%% ���������ΪӦ�����ݣ�ȫ�ֱ����������봰�ڶ�����
% setappdata(hObject,'strRec',strRec);

% UIWAIT makes serial_aq wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = serial_aq_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in com.
function com_Callback(hObject, eventdata, handles)
% hObject    handle to com (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns com contents as cell array
%        contents{get(hObject,'Value')} returns selected item from com


% --- Executes during object creation, after setting all properties.
function com_CreateFcn(hObject, eventdata, handles)
% hObject    handle to com (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in baudrate.
function baudrate_Callback(hObject, eventdata, handles)
% hObject    handle to baudrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns baudrate contents as cell array
%        contents{get(hObject,'Value')} returns selected item from baudrate


% --- Executes during object creation, after setting all properties.
function baudrate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to baudrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in data_bit.
function data_bit_Callback(hObject, eventdata, handles)
% hObject    handle to data_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns data_bit contents as cell array
%        contents{get(hObject,'Value')} returns selected item from data_bit


% --- Executes during object creation, after setting all properties.
function data_bit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to data_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in stop_bit.
function stop_bit_Callback(hObject, eventdata, handles)
% hObject    handle to stop_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns stop_bit contents as cell array
%        contents{get(hObject,'Value')} returns selected item from stop_bit


% --- Executes during object creation, after setting all properties.
function stop_bit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stop_bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in open_serial.
function open_serial_Callback(hObject, eventdata, handles)
%   ����/�رմ��ڡ���ť�Ļص�����
%% ����һЩȫ�ֱ�������ʼ��
    global XData; %����һȫ�ֱ�����������X�������
    global YData1;%������IMU_MAGX������
    global YData2;%������IMU_MAGY������
    global YData3;%������IMU_MAGZ������
    global Xlim;%������X��ķ�Χ
    global L1;%�����洢IMU_MAGX�ߵľ��
    global L2;%�����洢IMU_MAGY�ߵľ��
    global L3;%�����洢IMU_MAGZ�ߵľ��
    global Checkbox_x;%�����ж��Ƿ�ѡ����IMU_MAGX��ѡ��
    global Checkbox_y;%�����ж��Ƿ�ѡ����IMU_MAGY��ѡ��
    global Checkbox_z;%�����ж��Ƿ�ѡ����IMU_MAGZ��ѡ��
    Checkbox_x = 0;%��ʼ��Ϊδѡ��
    Checkbox_y = 0;
    Checkbox_z = 0;
    XData = 0;%��ʼ�������������Ϊ0
    YData1 = 0;
    YData2 = 0;
    YData3 = 0;
    Xlim = 0;

%    �򿪴��ڣ�����ʼ����ز���
%% �����¡��򿪴��ڡ���ť���򿪴���
    if get(hObject,'value')
%% ��ȡ���ڵĶ˿���
    com_n = sprintf('com%d', get(handles.com, 'value'));
    
%% ��ȡ������
    rates = [9600 38400 115200];
    baud_rate = rates(get(handles.baudrate, 'value'));
%% ��ȡУ��λ����
    switch get(handles.jiaoyan, 'value')
        case 1
            jiaoyan = 'none';
        case 2
            jiaoyan = 'odd';
        case 3
            jiaoyan = 'even';
    end
%% ��ȡ����λ����
    data_bits = 5 + get(handles.data_bit, 'value');
%% ��ȡֹͣλ����
    stop_bits = get(handles.stop_bit, 'value');
%% �������ڶ���
    scom = serial(com_n);
%% ���ô������ԣ�ָ����ص�����
    set(scom, 'BaudRate', baud_rate, 'Parity', jiaoyan, 'DataBits',...
        data_bits, 'StopBits', stop_bits,...
        'BytesAvailableFcnMode', 'Terminator', 'BytesAvailableFcn', {@my_callback, handles});
%% �����ڶ���ľ����Ϊ�û����ݣ����봰�ڶ���
    set(handles.figure1, 'UserData', scom);
%% ���Դ򿪴���
    try
        fopen(scom);  %�򿪴���
    catch   % �����ڴ�ʧ�ܣ���ʾ�����ڲ��ɻ�ã���
        msgbox('���ڲ��ɻ�ã�');
        set(hObject, 'value', 0);  %���𱾰�ť 
        return;
    end
%% �ܹ��򿪴��ں��趨��ͼ���������
    if get(handles.checkbox1,'value')
        Checkbox_x = 1;
        L1 = plot(handles.axes,XData,YData1,'r','EraseMode','none','MarkerSize',5);
        hold on;
    end
    if get(handles.checkbox2,'value')
        Checkbox_y = 1;
        L2 = plot(handles.axes,XData,YData2,'b','EraseMode','none','MarkerSize',5);
        hold on;
    end
    if get(handles.checkbox3,'value')
        Checkbox_z = 1;
        L3 = plot(handles.axes,XData,YData3,'m','EraseMode','none','MarkerSize',5);
    end
    set(handles.axes,'XLim',[Xlim-400 Xlim+100],'YLim',[-2 +2]);%�趨������ķ�Χ
    grid on; %�������
%% �趨������ť������
    set(handles.pause_start,'enable','on');
    set(hObject,'string','�رմ���');
    set(handles.lamb,'backgroundcolor','g');
 else %���رմ��� 
%% ɾ��line����
    Linehandle = get(gca,'children');%��ȡ��������Ӷ���ľ��
    delete(Linehandle);
%% ֹͣ��ɾ�����ڶ���
    scoms = instrfind;
    fclose(scoms);
    delete(scoms);
    set(hObject,'string','�򿪴���');
    set(handles.lamb,'backgroundcolor','r');
    set(handles.pause_start,'enable','off');
    set(handles.pause_start,'string','��ͣ��ʾ');
    set(handles.pause_start,'value',0);
   
end



function my_callback(obj,~,handles)
%   ���ڵ�BytesAvailableFcn�ص�����
%% ����һЩȫ�ֱ���
    global XData;
    global YData1;
    global YData2;
    global YData3;
    global Xlim;
    global L1;
    global L2;
    global L3;
    global Checkbox_x;
    global Checkbox_y;
    global Checkbox_z;
%% ÿ����һ�α�����X�������+1
    Xlim = Xlim+1;
    XData =[XData Xlim];

%% ���մ��ڷ��͹��������ݣ�������ʱ�����BUG������ԭ���꣩
    outdata = fscanf(obj);%���մ��ڷ�����ASII���ݣ����ڷ��������������ַ�����IMU_MAGX IMU_MAGY IMU_MAGZ ��
    YData = str2num(outdata);%���ַ���ת������ֵ����
    YData1 = [YData1 YData(:,1)];%�洢IMU_MAGX������
    YData2 = [YData2 YData(:,2)];%�洢IMU_MAGY������
    YData3 = [YData3 YData(:,3)];%�洢IMU_MAGZ������
%% �޶�������X Y�����鳤�Ȳ��ܳ���500����ֹ���ݹ���ʱ�׵����ڴ����Ĺ�����
    if (length(XData)) > 500
        XData = XData(:,2:end);%���鳤��һ������500�Ͷ�����1�е�ֵ
    end
    if (length(YData1)) > 500
        YData1 = YData1(:,2:end);
    end
    if (length(YData2)) > 500
        YData2 = YData2(:,2:end);
    end
    if (length(YData3)) > 500
        YData3 = YData3(:,2:end);
    end
%% ͨ���ж���ѡ�ĸ�ѡ���ֵ��������ӦY�����������
if (~get(handles.pause_start,'value'))%����������ͣ��ʾ����ֹͣ����Y�������
    if Checkbox_x
        set(L1,'Xdata',XData,'YData',YData1);
    end
    if Checkbox_y
        set(L2,'Xdata',XData,'YData',YData2);
    end
    if Checkbox_z
        set(L3,'Xdata',XData,'YData',YData3);
    end
end
%% ���Y�����ݵ���С���ֵ
    min_1 = min(YData1(:));
    min_2 = min(YData2(:));
    min_3 = min(YData3(:));
    max_1 = max(YData1(:));
    max_2 = max(YData2(:));
    max_3 = max(YData3(:));
%% ͨ���ж���ѡ��Ĺ�ѡֵ��������Ӧ����С���ֵ�����������Y�����ݵ���С���ֵ
    if Checkbox_x && Checkbox_y && Checkbox_z
        min_array = [min_1 min_2 min_3];
        max_array = [max_1 max_2 max_3];
    elseif Checkbox_x && Checkbox_y
        min_array = [min_1 min_2];
        max_array = [max_1 max_2]; 
    elseif Checkbox_y && Checkbox_z
        min_array = [min_2 min_3];
        max_array = [max_2 max_3]; 
    elseif Checkbox_x
        min_array = min_1;
        max_array = max_1;
    elseif Checkbox_y
        min_array = min_2;
        max_array = max_2;
    elseif Checkbox_z
        min_array = min_3;
        max_array = max_3;
    else
        min_array = -2 + 0.2;
        max_array = 2 + 0.2;
    end
        min_all = min(min_array);
        max_all = max(max_array);
%% ���������᷶Χ
if (~get(handles.pause_start,'value'))%����������ͣ��ʾ����ֹͣ���������᷶Χ
    set(handles.axes,'XLim',[Xlim-400 Xlim+100],'YLim',[min_all-0.2  max_all+0.2]);
end
%% ����ֵ���ݸ�ʽ�����ַ���
    IMU_MAGX = sprintf('%f',YData(:,1));
    IMU_MAGY = sprintf('%f',YData(:,2));
    IMU_MAGZ = sprintf('%f',YData(:,3));

%% ��ʾ���յ��ַ���
if (~get(handles.pause_start,'value'))
    set(handles.display_x,'string',IMU_MAGX);
    set(handles.display_y,'string',IMU_MAGY);
    set(handles.display_z,'string',IMU_MAGZ);
end


% --- Executes on button press in lamb.
function lamb_Callback(hObject, eventdata, handles)
% hObject    handle to lamb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function display_Callback(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display as text
%        str2double(get(hObject,'String')) returns contents of display as a double


% --- Executes during object creation, after setting all properties.
function display_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in jiaoyan.
function jiaoyan_Callback(hObject, eventdata, handles)
% hObject    handle to jiaoyan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns jiaoyan contents as cell array
%        contents{get(hObject,'Value')} returns selected item from jiaoyan


% --- Executes during object creation, after setting all properties.
function jiaoyan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jiaoyan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear_display.
function clear_display_Callback(hObject, eventdata, handles)
% hObject    handle to clear_display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.display_x,'string','');
set(handles.display_y,'string','');
set(handles.display_z,'string','');



function display_x_Callback(hObject, eventdata, handles)
% hObject    handle to display_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_x as text
%        str2double(get(hObject,'String')) returns contents of display_x as a double


% --- Executes during object creation, after setting all properties.
function display_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_y_Callback(hObject, eventdata, handles)
% hObject    handle to display_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_y as text
%        str2double(get(hObject,'String')) returns contents of display_y as a double


% --- Executes during object creation, after setting all properties.
function display_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function display_z_Callback(hObject, eventdata, handles)
% hObject    handle to display_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display_z as text
%        str2double(get(hObject,'String')) returns contents of display_z as a double


% --- Executes during object creation, after setting all properties.
function display_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in pause_start.
function pause_start_Callback(hObject, eventdata, handles)
% ������ͣ��ʾ���ݺ�ͼ��
if get(hObject,'value')
    set(hObject,'string','������ʾ');
else
    set(hObject,'string','��ͣ��ʾ');
end

% hObject    handle to pause_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pause_start
