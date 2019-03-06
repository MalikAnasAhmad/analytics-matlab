function varargout = UI_MarkLabel_201702241414(varargin)
% UI_MARKLABEL_201702241414 MATLAB code for UI_MarkLabel_201702241414.fig
%      UI_MARKLABEL_201702241414, by itself, creates a new UI_MARKLABEL_201702241414 or raises the existing
%      singleton*.
%
%      H = UI_MARKLABEL_201702241414 returns the handle to a new UI_MARKLABEL_201702241414 or the handle to
%      the existing singleton*.
%
%      UI_MARKLABEL_201702241414('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI_MARKLABEL_201702241414.M with the given input arguments.
%
%      UI_MARKLABEL_201702241414('Property','Value',...) creates a new UI_MARKLABEL_201702241414 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UI_MarkLabel_201702241414_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UI_MarkLabel_201702241414_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UI_MarkLabel_201702241414

% Last Modified by GUIDE v2.5 01-Mar-2017 15:13:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UI_MarkLabel_201702241414_OpeningFcn, ...
                   'gui_OutputFcn',  @UI_MarkLabel_201702241414_OutputFcn, ...
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


% --- Executes just before UI_MarkLabel_201702241414 is made visible.
function UI_MarkLabel_201702241414_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UI_MarkLabel_201702241414 (see VARARGIN)

% Choose default command line output for UI_MarkLabel_201702241414
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global AfterClassification;
AfterClassification =0;
cla(handles.axes1)
cla(handles.axes2)
cla(handles.axes3)
set(handles.listbox1,'String','')
% UIWAIT makes UI_MarkLabel_201702241414 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UI_MarkLabel_201702241414_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',char(fread(fopen([pwd '\lastVisitedAddress.txt'], 'r'))'));

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Data;
global Labels;
global Handle_Load;
global trainLabels;
% if(~isempty(Handle_Load))
%     a=1
% end
delete(Handle_Load);
try
    Handle_Load = msgbox('Loading............................................','Load');
%     [hdr,data] = edfread(get(handles.edit1,'String'));    
    FileOutput = xlsread(get(handles.edit1,'String'));
    Data = FileOutput(:,1);
%     Labels = FileOutput(:,2);%% temporary

    delete(Handle_Load);
    Handle_Load = msgbox('Load Complete','Load');
%     set(handles.listbox1,'String',char(hdr.label))
cla(handles.axes3)
catch
    delete(Handle_Load);
    msgbox('Invalid address','Load');
end
fwrite(fopen([pwd '\lastVisitedAddress.txt'], 'w'),get(handles.edit1,'String'));
% fwrite(fopen([ pwd '\lastSamplingFrequency.txt'], 'w'),get(handles.edit2,'String'));
plotClassifiedProfileBox_AfterLoad(handles);
% plotClassifiedProfileBox(handles);
plotZoomBox(handles);
% set(handles.listbox1,'String',num2str(unique(Labels)))
% trainLabels = 0;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.xls','Select the mat file');
file_dir=[PathName FileName];
if (~file_dir)
else
    set(handles.edit1,'String',file_dir);
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Data;
global Labels;
global trainLabels;
global TestIndex_new;
global AfterClassification;

% trainLabels = Labels(TestIndex_new);
[x,~]=ginput(2);
dlg_title = 'kindly confirm the Inputs for correction marking';
prompt = {'Enter lower limit in sec(s):','Enter upper limit in sec(s):','Current Labels','Suggested Labels','Marked Label'};
num_lines = 2;
% def = {num2str(ceil(x(1))),num2str(ceil(x(2))),num2str(unique(Labels(TestIndex_new((ceil(x(1))):(ceil(x(2))))))),num2str(unique(trainLabels)),''};
def = {num2str(ceil(x(1))),num2str(ceil(x(2))),num2str(unique(Labels(TestIndex_new((ceil(x(1))):(ceil(x(2)))))))',num2str(unique(trainLabels)'),''};
answer = inputdlg(prompt,dlg_title,num_lines,def);
if (~isempty(answer))
    x = [str2double(char(answer(1))) str2double(char(answer(2)))];
    if (~isnan(x(1))&&~isnan(x(2))&&~isnan(str2double(answer(5)))&&((str2double(answer(5)))~=0)&&((str2double(answer(5)))<=10)&&((str2double(answer(5)))>=-5))
        if ceil(x(1)) > ceil(x(2))
            trainLabels(ceil(x(2)):ceil(x(1))) = str2double(answer(5));
        else
            trainLabels(ceil(x(1)):ceil(x(2))) = str2double(answer(5));
        end
        if (AfterClassification)
            plotClassifiedProfileBox(handles,Data(TestIndex_new),trainLabels);
            plotLabelBox(handles,trainLabels)
        else
            plotClassifiedProfileBox_AfterLoad(handles);
            plotLabelBox(handles,trainLabels)
        end
        set(handles.listbox1,'String',num2str(unique(trainLabels)'))
    elseif(((str2double(answer(5)))==0))
        msgbox('You can not Label a segment as 0','Mark Label','error');
    elseif(((str2double(answer(5)))>10)||((str2double(answer(5)))<-5))
        msgbox('Label should be an integer in between -5 to 10 except 0','Mark Label','error');
    else
        msgbox('Fields are empty','Mark Label','error');
    end
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Data;
global Labels;
global trainLabels;
global TestIndex_new;

windowSize = 0;

if(~isnan(str2double(get(handles.edit2,'String'))))
    windowSize = str2double(get(handles.edit2,'String'));
    
%     DataWindow = OverlapWindow(Data,str2double(get(handles.edit2,'String')));

IncludeIndexes = find(trainLabels~=0);

    DataWindow = OverlapWindow(Data(TestIndex_new(IncludeIndexes)),str2double(get(handles.edit2,'String')));
    % % (str2double(get(handles.edit6,'String')))
    meanFeature = mean(DataWindow,2);
    stdFeature = std(DataWindow,0,2);
    pwrFeature = sum((DataWindow.*DataWindow),2)./size(DataWindow,2);
    medFeature = median(DataWindow,2,'omitnan');
    % medMeanFeature = medFeature(2:end) - diff(meanFeature);
    medMeanFeature = median(OverlapWindow(medFeature - meanFeature,windowSize*2),2);
    modFeature = mode(DataWindow,2);%not using it for noow

    Features = [meanFeature(windowSize*2:end)...
        stdFeature(windowSize*2:end)...
        pwrFeature(windowSize*2:end)...
        medFeature(windowSize*2:end)...
        medMeanFeature...
        modFeature(windowSize*2:end)];

    
    trainLabelsIncluded = trainLabels(IncludeIndexes);
% Labels_Cut = Labels((windowSize*3)-(3-2):end);
trainLabels_Cut = trainLabelsIncluded((windowSize*3)-(3-2):end);

ClassTreeBag = fitensemble(Features,trainLabels_Cut,'Bag',100,'Tree','Type','Classification');
% Labels_Classified = predict(ClassTreeBag,Features);

DataWindow = OverlapWindow(Data,str2double(get(handles.edit2,'String')));
meanFeature = mean(DataWindow,2);
stdFeature = std(DataWindow,0,2);
pwrFeature = sum((DataWindow.*DataWindow),2)./size(DataWindow,2);
medFeature = median(DataWindow,2,'omitnan');
% medMeanFeature = medFeature(2:end) - diff(meanFeature);
medMeanFeature = median(OverlapWindow(medFeature - meanFeature,windowSize*2),2);
modFeature = mode(DataWindow,2);%not using it for noow

Features = [meanFeature(windowSize*2:end)...
    stdFeature(windowSize*2:end)...
    pwrFeature(windowSize*2:end)...
    medFeature(windowSize*2:end)...
    medMeanFeature...
    modFeature(windowSize*2:end)];

Labels = predict(ClassTreeBag,Features)';

plotClassifiedProfileBox(handles,Data,Labels)
cla(handles.axes3)
plotLabelBox4Classify(handles,Labels)
end
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pan('on')

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pan('off')

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
zoom('on')

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
zoom('off')

function plotClassifiedProfileBox(handles,Data,Labels)
% global Data;
% global Labels;

cla(handles.axes1)
size(Data);
size(Labels);
LL = [1;find(diff(Labels'))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

hold(handles.axes1,'on')
xlim(handles.axes1,[1 numel(Labels)])

for Chunks = 1:size(Limits,1)
%     eval(['if(Labels(Limits(Chunks,1))==1)' ...
%         10 ...
%     'plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),''m'')'])
    if(Labels(Limits(Chunks,1))==10)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0 0])
    elseif(Labels(Limits(Chunks,1))==9)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0 0.9 0])
    elseif(Labels(Limits(Chunks,1))==8)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0 0 0.9])
    elseif(Labels(Limits(Chunks,1))==7)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0.9 0])
    elseif(Labels(Limits(Chunks,1))==6)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0 0.9 0.9])
    elseif(Labels(Limits(Chunks,1))==5)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0 0.9])
    elseif(Labels(Limits(Chunks,1))==4)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0.5 0.5])
    elseif(Labels(Limits(Chunks,1))==3)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.5 0.9 0.5])
    elseif(Labels(Limits(Chunks,1))==2)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.5 0.5 0.9])
    elseif(Labels(Limits(Chunks,1))==1)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0.9 0.5])
    elseif(Labels(Limits(Chunks,1))==0)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'b')
    elseif(Labels(Limits(Chunks,1))==-1)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'r')
    elseif(Labels(Limits(Chunks,1))==-2)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'g')
    elseif(Labels(Limits(Chunks,1))==-3)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.5 0.9 0.9])
    elseif(Labels(Limits(Chunks,1))==-4)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'k')
    elseif(Labels(Limits(Chunks,1))==-5)
        plot(handles.axes1,(Limits(Chunks,1):Limits(Chunks,2)),Data(Limits(Chunks,1):Limits(Chunks,2)),'y')
    end
end
xlim(handles.axes1,[1 numel(Labels)])
hold (handles.axes1,'off')

function plotClassifiedProfileBox_AfterLoad(handles)

global Data;
global TestIndex_new;
global AfterClassification;
global trainLabels;
AfterClassification =1;
rand_Range = unique(sort(ceil(rand(1,10).*numel(Data))));
RangeLimits = reshape(rand_Range(1:floor(numel(rand_Range)/2)*2),2,floor(numel(rand_Range)/2));
TestIndex = [];
for index = 1:size(RangeLimits,2)
    TestIndex = [TestIndex RangeLimits(index+(index-1)):RangeLimits(index+(index))];
end

Test_Index_Range = unique(sort(ceil(rand(1,floor(numel(Data)/10)).*numel(TestIndex))));
TestIndex_new = [];
RangeLimits_TIR = reshape(Test_Index_Range(1:floor(numel(Test_Index_Range)/2)*2),2,floor(numel(Test_Index_Range)/2));
for index = 1:size(RangeLimits_TIR,2)
    TestIndex_new = [TestIndex_new RangeLimits_TIR(index+(index-1)):RangeLimits_TIR(index+(index))];
end
% TestIndex
size(TestIndex);
size(TestIndex_new);
trainLabels = zeros(size(TestIndex_new));
plot(handles.axes1,Data(TestIndex_new),'b')
xlim(handles.axes1,[1 numel(TestIndex_new)])

function plotZoomBox(handles)
global Data;
plot(handles.axes2,Data)
xlim(handles.axes2,[0 numel(Data)])
% % (str2double(get(handles.edit6,'String')))
% ylim(handles.axes2,[(str2double(get(handles.edit6,'String'))) (str2double(get(handles.edit5,'String')))])

function plotLabelBox(handles,trainLabels)
% global trainLabels;
% find(trainLabels==1)

hold(handles.axes3,'on')

if(~isnan(find(trainLabels==10)))
    stem(handles.axes3,find(trainLabels==10),trainLabels(find(trainLabels==10)),'Color',[0.9 0 0])
elseif(~isnan(find(trainLabels==9)))
    stem(handles.axes3,find(trainLabels==9),trainLabels(find(trainLabels==9)),'Color',[0 0.9 0])
elseif(~isnan(find(trainLabels==8)))
    stem(handles.axes3,find(trainLabels==8),trainLabels(find(trainLabels==8)),'Color',[0 0 0.9])
elseif(~isnan(find(trainLabels==7)))
    stem(handles.axes3,find(trainLabels==7),trainLabels(find(trainLabels==7)),'Color',[0.9 0.9 0])
elseif(~isnan(find(trainLabels==6)))
    stem(handles.axes3,find(trainLabels==6),trainLabels(find(trainLabels==6)),'Color',[0 0.9 0.9])
elseif(~isnan(find(trainLabels==5)))
    stem(handles.axes3,find(trainLabels==5),trainLabels(find(trainLabels==5)),'Color',[0.9 0 0.9])
elseif(~isnan(find(trainLabels==4)))
    stem(handles.axes3,find(trainLabels==4),trainLabels(find(trainLabels==4)),'Color',[0.9 0.5 0.5])
elseif(~isnan(find(trainLabels==3)))
    stem(handles.axes3,find(trainLabels==3),trainLabels(find(trainLabels==3)),'Color',[0.5 0.9 0.5])
elseif(~isnan(find(trainLabels==2)))
    stem(handles.axes3,find(trainLabels==2),trainLabels(find(trainLabels==2)),'Color',[0.5 0.5 0.9])
elseif(~isnan(find(trainLabels==1)))
    stem(handles.axes3,find(trainLabels==1),trainLabels(find(trainLabels==1)),'Color',[0.9 0.9 0.5])
elseif(~isnan(find(trainLabels==0)))
    stem(handles.axes3,find(trainLabels==0),trainLabels(find(trainLabels==0)),'b')
elseif(~isnan(find(trainLabels==-1)))
    stem(handles.axes3,find(trainLabels==-1),trainLabels(find(trainLabels==-1)),'r')
elseif(~isnan(find(trainLabels==-2)))
    stem(handles.axes3,find(trainLabels==-2),trainLabels(find(trainLabels==-2)),'g')
elseif(~isnan(find(trainLabels==-3)))
    stem(handles.axes3,find(trainLabels==-3),trainLabels(find(trainLabels==-3)),'Color',[0.5,0.9,0.9])
elseif(~isnan(find(trainLabels==-4)))
    stem(handles.axes3,find(trainLabels==-4),trainLabels(find(trainLabels==-4)),'k')
elseif(~isnan(find(trainLabels==-5)))
    stem(handles.axes3,find(trainLabels==-5),trainLabels(find(trainLabels==-5)),'y')
end
xlim(handles.axes3,[0 numel(trainLabels)])

hold(handles.axes3,'off')

function plotLabelBox4Classify(handles,Labels)

LL = [1;find(diff(Labels'))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

hold(handles.axes3,'on')

for Chunks = 1:size(Limits,1)
    if(Labels(Limits(Chunks,1))==10)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0 0])
    elseif(Labels(Limits(Chunks,1))==9)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0 0.9 0])
    elseif(Labels(Limits(Chunks,1))==8)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0 0 0.9])
    elseif(Labels(Limits(Chunks,1))==7)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0.9 0])
    elseif(Labels(Limits(Chunks,1))==6)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0 0.9 0.9])
    elseif(Labels(Limits(Chunks,1))==5)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0 0.9])
    elseif(Labels(Limits(Chunks,1))==4)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0.5 0.5])
    elseif(Labels(Limits(Chunks,1))==3)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.5 0.9 0.5])
    elseif(Labels(Limits(Chunks,1))==2)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.5 0.5 0.9])
    elseif(Labels(Limits(Chunks,1))==1)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.9 0.9 0.5])
    elseif(Labels(Limits(Chunks,1))==0)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'b')
    elseif(Labels(Limits(Chunks,1))==-1)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'r')
    elseif(Labels(Limits(Chunks,1))==-2)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'g')
    elseif(Labels(Limits(Chunks,1))==-3)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'Color',[0.5 0.9 0.9])
    elseif(Labels(Limits(Chunks,1))==-4)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'k')
    elseif(Labels(Limits(Chunks,1))==-5)
        stem(handles.axes3,(Limits(Chunks,1):Limits(Chunks,2)),Labels(Limits(Chunks,1):Limits(Chunks,2)),'y')
    end
end

xlim(handles.axes3,[1 numel(Labels)])
hold(handles.axes3,'off')