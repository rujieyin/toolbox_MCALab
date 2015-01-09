function varargout = MCA2DGUI(varargin)
% MCA2DGUI M-file for MCA2DGUI.fig
%      MCA2DGUI, by itself, creates a new MCA2DGUI or raises the existing
%      singleton*.
%
%      H = MCA2DGUI returns the handle to a new MCA2DGUI or the handle to
%      the existing singleton*.
%
%      MCA2DGUI('Property','Value',...) creates a new MCA2DGUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to MCA2DGUI_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      MCA2DGUI('CALLBACK') and MCA2DGUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in MCA2DGUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MCA2DGUI

% Last Modified by GUIDE v2.5 03-Apr-2008 14:57:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MCA2DGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @MCA2DGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before MCA2DGUI is made visible.
function MCA2DGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for MCA2DGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MCA2DGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MCA2DGUI_OutputFcn(hObject, eventdata, handles)
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

global IMG MASKIMG

MCAHndl=guihandles(gcf); % Get handles with proper named tags.

axes(MCAHndl.axes1);
cla
axes(MCAHndl.axes2);
cla
axes(MCAHndl.axes3);
cla
axes(MCAHndl.axes4);
cla

list=get(MCAHndl.nameofdict1,'String');
nameofdict1=list{get(MCAHndl.nameofdict1,'Value')};
list=get(MCAHndl.nameofdict2,'String');
nameofdict2=list{get(MCAHndl.nameofdict2,'Value')};

list=get(MCAHndl.nameofwavelet,'String');
nameofwavelet=list{get(MCAHndl.nameofwavelet,'Value')};
list=get(MCAHndl.nameofwindow,'String');
bellname=list{get(MCAHndl.nameofwindow,'Value')};

windowidth=str2double(get(MCAHndl.windowidth,'String'));
waveletparameter=str2double(get(MCAHndl.waveletparameter,'String'));
scale=str2double(get(MCAHndl.coarsestscale,'String'));
detectionscale=str2double(get(MCAHndl.detectionscale,'String'));

nbiterations=str2double(get(MCAHndl.nbiterations,'String'));
gamma=str2double(get(MCAHndl.TVparameter,'String'));
tvcomp=str2double(get(MCAHndl.TVcomponent,'String'));
stopcriterion=str2double(get(MCAHndl.stopcriterion,'String'));
exponentialdecrease=get(MCAHndl.exponentialdecrease,'Value');

qmf=MakeONFilter(nameofwavelet,waveletparameter);

if strcmp(nameofdict2,'LDCT2iv') | strcmp(nameofdict2,'ALDCT2iv')
	pars21=MakeList(bellname);
	if strcmp(nameofdict2,'LDCT2iv')
		pars22=MakeList(windowidth);
	else
		pars22=nextpow2(min(size(IMG)));
	end
	pars11=MakeList(num2str(scale));
else
	pars21=MakeList(windowidth);
	pars22=MakeList(0);
	pars11=MakeList(scale);
end
pars23=MakeList(0);

if strcmp(nameofdict1,'CURV') | strcmp(nameofdict1,'CURVWRAP')
    pars12=MakeList(0);pars13=MakeList(0);
else
    pars12=MakeList(qmf);pars13=MakeList(detectionscale);
end

%nameofdict1,pars11,pars12,pars13,nameofdict2,pars21,pars22,pars23,nbiterations,gamma,exponentialdecrease,stopcriterion
if(~exist('MASKIMG') | isempty(MASKIMG))
	MASKIMG=ones(size(IMG));
end
if(exist('IMG') & ~isempty(IMG))
	nameofdicts=MakeList(nameofdict1,nameofdict2);
	pars1=MakeList(pars11,pars21);
	pars2=MakeList(pars12,pars22);
	pars3=MakeList(pars13,pars23);
	part=MCA2_Bcr(IMG.*MASKIMG,nameofdicts,pars1,pars2,pars3,nbiterations,gamma,tvcomp,exponentialdecrease,stopcriterion,MASKIMG);
	axes(MCAHndl.axes1);
	imagesc(part(:,:,1));axis image;axis off;title('Part1');
	axes(MCAHndl.axes3);
	imagesc(part(:,:,2));axis image;axis off;title('Part2');
	axes(MCAHndl.axes2);
	imagesc(sum(part,3));axis image;axis off;title('Part1+Part2');
	axes(MCAHndl.axes4);
	imagesc(IMG-sum(part,3));axis image;axis off;colorbar;title('Residuals');
else
	errordlg('The input image is either empty or inexistent...');
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


% --- Executes during object creation, after setting all properties.
function TVparameter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TVparameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function TVparameter_Callback(hObject, eventdata, handles)
% hObject    handle to TVparameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TVparameter as text
%        str2double(get(hObject,'String')) returns contents of TVparameter as a double


% --------------------------------------------------------------------
function loadsignal_Callback(hObject, eventdata, handles)
% hObject    handle to loadsignal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

LoadImage;

% --------------------------------------------------------------------
function loadmask_Callback(hObject, eventdata, handles)
% hObject    handle to loadsignal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

LoadMask;

% --------------------------------------------------------------------
function colormap_Callback(hObject, eventdata, handles)
% hObject    handle to colormap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

colormap(get(hObject,'Tag'));


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function TVcomponent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TVcomponent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function TVcomponent_Callback(hObject, eventdata, handles)
% hObject    handle to TVcomponent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TVcomponent as text
%        str2double(get(hObject,'String')) returns contents of TVcomponent as a double


