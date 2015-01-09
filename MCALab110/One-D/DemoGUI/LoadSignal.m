function varargout = LoadSignal(varargin)
% LOADSIGNAL Application M-file for LoadSignal.fig
%   LOADSIGNAL, by itself, creates a new LOADSIGNAL or raises the existing
%   singleton*.
%
%   H = LOADSIGNAL returns the handle to a new LOADSIGNAL or the handle to
%   the existing singleton*.
%
%   LOADSIGNAL('CALLBACK',hObject,eventData,handles,...) calls the local
%   function named CALLBACK in LOADSIGNAL.M with the given input arguments.
%
%   LOADSIGNAL('Property','Value',...) creates a new LOADSIGNAL or raises the
%   existing singleton*.  Starting from the left, property value pairs are
%   applied to the GUI before LoadSignal_OpeningFunction gets called.  An
%   unrecognized property name or invalid value makes property application
%   stop.  All inputs are passed to LoadSignal_OpeningFcn via varargin.
%
%   *See GUI Options - GUI allows only one instance to run (singleton).
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LoadSignal

% Last Modified by GUIDE v2.5 08-Apr-2002 16:31:06

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',          mfilename, ...
                   'gui_Singleton',     gui_Singleton, ...
                   'gui_OpeningFcn',    @LoadSignal_OpeningFcn, ...
                   'gui_OutputFcn',     @LoadSignal_OutputFcn, ...
                   'gui_LayoutFcn',     [], ...
                   'gui_Callback',      []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    varargout{1:nargout} = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before LoadSignal is made visible.
function LoadSignal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LoadSignal (see VARARGIN)

% Choose default command line output for LoadSignal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Populate the listbox
update_listbox(handles)
set(handles.listbox1,'Value',[])

% UIWAIT makes LoadSignal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LoadSignal_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function varargout = update_button_Callback(h, eventdata, handles, varargin)
% hObject    handle to update_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

update_listbox(handles)

function update_listbox(handles)
% hObject    handle to update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

% Updates the listbox to match the current workspace
vars = evalin('base','who');
set(handles.listbox1,'String',vars)

function var = get_var_names(handles)
% Returns the names of the two variables to plot
list_entries = get(handles.listbox1,'String');
index_selected = get(handles.listbox1,'Value');
if length(index_selected) ~= 1
    errordlg('You must select at most one variable','Incorrect Selection','modal')
else
    var = list_entries{index_selected(1)};
end 

function varargout = plot_button_Callback(h, eventdata, handles, varargin)
% hObject    handle to plot_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global SIGNAL

s = get_var_names(handles);
evalin('base',['SIGNAL=',s,';'],'errordlg(lasterr,''Error evaluation'',''modal'')')
MCAHndl=guihandles(gcf);
axes(MCAHndl.axes1);cla
axes(MCAHndl.axes2);cla
axes(MCAHndl.axes3);cla
axes(MCAHndl.axes4);cla
%evalin('base',['plot(',s,')'],'errordlg(lasterr,''Error generating plots'',''modal'')')
axes(MCAHndl.axes2);
plot(SIGNAL);axis tight;title('Original signal');
hObject=get(h);
close(hObject.Parent);

% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = ispc;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


