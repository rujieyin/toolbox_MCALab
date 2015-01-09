function varargout = MCAGUI(varargin)
% MCAGUI M-file for MCAGUI.fig
%      MCAGUI, by itself, creates a new MCAGUI or raises the existing
%      singleton*.
%
%      H = MCAGUI returns the handle to a new MCAGUI or the handle to
%      the existing singleton*.
%
%      MCAGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MCAGUI.M with the given input arguments.
%
%      MCAGUI('Property','Value',...) creates a new MCAGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MCAGUI_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MCAGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MCAGUI

% Last Modified by GUIDE v2.5 15-Jul-2004 17:16:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MCAGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @MCAGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MCAGUI is made visible.
function MCAGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MCAGUI (see VARARGIN)

% Choose default command line output for MCAGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% handles
axes(handles.axes5);
cla
axes(handles.axes6);
cla
axes(handles.axes7);
cla
axes(handles.axes8);
cla

% UIWAIT makes MCAGUI wait for user response (see UIRESUME)
% uiwait(handles.MCAGUI);


% --- Outputs from this function are returned to the command line.
function varargout = MCAGUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function nameofdict1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nameofdict1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in nameofdict1.
function nameofdict1_Callback(hObject, eventdata, handles)
% hObject    handle to nameofdict1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns nameofdict1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nameofdict1


% --- Executes during object creation, after setting all properties.
function waveletparameter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to waveletparameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function waveletparameter_Callback(hObject, eventdata, handles)
% hObject    handle to waveletparameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of waveletparameter as text
%        str2double(get(hObject,'String')) returns contents of waveletparameter as a double


% --- Executes during object creation, after setting all properties.
function nameofdict2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nameofdict2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in nameofdict2.
function nameofdict2_Callback(hObject, eventdata, handles)
% hObject    handle to nameofdict2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns nameofdict2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nameofdict2


% --- Executes during object creation, after setting all properties.
function nameofwavelet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nameofwavelet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in nameofwavelet.
function nameofwavelet_Callback(hObject, eventdata, handles)
% hObject    handle to nameofwavelet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns nameofwavelet contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nameofwavelet


% --- Executes during object creation, after setting all properties.
function coarsestscale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coarsestscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function coarsestscale_Callback(hObject, eventdata, handles)
% hObject    handle to coarsestscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of coarsestscale as text
%        str2double(get(hObject,'String')) returns contents of coarsestscale as a double


% --- Executes during object creation, after setting all properties.
function windowidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to windowidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function windowidth_Callback(hObject, eventdata, handles)
% hObject    handle to windowidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of windowidth as text
%        str2double(get(hObject,'String')) returns contents of windowidth as a double


% --- Executes during object creation, after setting all properties.
function nameofwindow_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nameofwindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in nameofwindow.
function nameofwindow_Callback(hObject, eventdata, handles)
% hObject    handle to nameofwindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns nameofwindow contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nameofwindow


% --- Executes during object creation, after setting all properties.
function detectionscale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to detectionscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function detectionscale_Callback(hObject, eventdata, handles)
% hObject    handle to detectionscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of detectionscale as text
%        str2double(get(hObject,'String')) returns contents of detectionscale as a double


% --- Executes during object creation, after setting all properties.
function nbiterations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nbiterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function nbiterations_Callback(hObject, eventdata, handles)
% hObject    handle to nbiterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nbiterations as text
%        str2double(get(hObject,'String')) returns contents of nbiterations as a double


% --- Executes on button press in applymca.
function applymca_Callback(hObject, eventdata, handles)
% hObject    handle to applymca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global SIGNAL

MCAHndl=guihandles(gcf); % Get handles with proper named tags.

axes(MCAHndl.axes1);
cla
axes(MCAHndl.axes2);
cla
axes(MCAHndl.axes3);
cla
axes(MCAHndl.axes4);
cla

list=get(MCAHndl.nameofdict2,'String');
nameofdict1=list{get(MCAHndl.nameofdict2,'Value')};
list=get(MCAHndl.nameofdict1,'String');
nameofdict2=list{get(MCAHndl.nameofdict1,'Value')};
%nameofdict2='POTV';

list=get(MCAHndl.nameofwavelet,'String');
nameofwavelet=list{get(MCAHndl.nameofwavelet,'Value')};
list=get(MCAHndl.nameofwindow,'String');
bellname=list{get(MCAHndl.nameofwindow,'Value')};
overlap=str2double(get(MCAHndl.overlap,'String'));

windowidth=str2double(get(MCAHndl.windowidth,'String'));
waveletparameter=str2double(get(MCAHndl.waveletparameter,'String'));
scale=str2double(get(MCAHndl.coarsestscale,'String'));
detectionscale=str2double(get(MCAHndl.detectionscale,'String'));

thdtype=get(MCAHndl.thdtype,'Value');
nbiterations=str2double(get(MCAHndl.nbiterations,'String'));
stopcriterion=str2double(get(MCAHndl.stopcriterion,'String'));
exponentialdecrease=get(MCAHndl.exponentialdecrease,'Value');

qmf=MakeONFilter(nameofwavelet,waveletparameter);

if strcmp(nameofdict1,'LDCTiv') | strcmp(nameofdict1,'ALDCTiv')
	pars11=MakeList(bellname);
	if strcmp(nameofdict1,'LDCTiv')
		pars12=MakeList(windowidth);
	else
		pars12=nextpow2(length(SIGNAL));
	end
	pars21=MakeList(num2str(scale));
else
	pars11=MakeList(windowidth);
	pars12=MakeList(overlap);
	pars21=MakeList(scale);
end
pars13=MakeList(1);
pars22=MakeList(qmf);pars23=MakeList(detectionscale);

%nameofdict1,pars11,pars12,pars13,nameofdict2,pars21,pars22,pars23,nbiterations,stopcriterion

if(exist('SIGNAL') & ~isempty(SIGNAL))
	nameofdicts=MakeList(nameofdict1,nameofdict2);
	pars1=MakeList(pars11,pars21);
	pars2=MakeList(pars12,pars22);
	pars3=MakeList(pars13,pars23);
	part=MCA_Bcr(SIGNAL,nameofdicts,pars1,pars2,pars3,nbiterations,0,0,exponentialdecrease,stopcriterion,ones(size(SIGNAL)));
	%partb=medfilter(partb,9);
	axes(MCAHndl.axes1);
	plot(part(:,1));axis tight;title('Part1');
	axes(MCAHndl.axes3);
	plot(part(:,2));axis tight;title('Part2');
	axes(MCAHndl.axes2);
	plot(sum(part,2));
	hold on;plot(SIGNAL,'--');axis tight;title('Signal');legend('Part1+Part2','Original signal');
	axes(MCAHndl.axes4);
	plot(ShapeAsRow(SIGNAL)'-sum(part,2));axis tight;title('Residuals');
end

% --- Executes during object creation, after setting all properties.
function stopcriterion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stopcriterion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function stopcriterion_Callback(hObject, eventdata, handles)
% hObject    handle to stopcriterion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stopcriterion as text
%        str2double(get(hObject,'String')) returns contents of stopcriterion as a double


% --- Executes on button press in exponentialdecrease.
function exponentialdecrease_Callback(hObject, eventdata, handles)
% hObject    handle to exponentialdecrease (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of exponentialdecrease


% --------------------------------------------------------------------
function loadsignal_Callback(hObject, eventdata, handles)
% hObject    handle to loadsignal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

LoadSignal;


% --- Executes on button press in thdtype.
function thdtype_Callback(hObject, eventdata, handles)
% hObject    handle to thdtype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of thdtype


% --- Executes during object creation, after setting all properties.
function overlap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to overlap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function overlap_Callback(hObject, eventdata, handles)
% hObject    handle to overlap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of overlap as text
%        str2double(get(hObject,'String')) returns contents of overlap as a double


