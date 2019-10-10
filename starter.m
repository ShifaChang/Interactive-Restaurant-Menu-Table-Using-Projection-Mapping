function varargout = Gui2(varargin)
% GUI2 MATLAB code for Gui2.fig
%      GUI2, by itself, creates a new GUI2 or raises the existing
%      singleton*.
%
%      H = GUI2 returns the handle to a new GUI2 or the handle to
%      the existing singleton*.
%
%      GUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI2.M with the given input arguments.
%
%      GUI2('Property','Value',...) creates a new GUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui2

% Last Modified by GUIDE v2.5 28-Apr-2018 11:00:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui2_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui2_OutputFcn, ...
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


% --- Executes just before Gui2 is made visible.
function Gui2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gui2 (see VARARGIN)


handles.output = hObject;
% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('black.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gui2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gui2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in greensalad.


% --- Executes on button press in inc1.
function inc1_Callback(hObject, eventdata, handles)
a=str2num(get(handles.gsqty,'string'))+1;
b=50*a;
set(handles.gsqty,'string',num2str(a))
set(handles.gstotal,'string',num2str(b))
handles.t1=str2num(get(handles.gstotal,'string'));
handles.t2=str2num(get(handles.rstotal,'string'));
handles.t3=str2num(get(handles.pastatotal,'string'));
handles.t4=str2num(get(handles.raitatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
tt=num2str(handles.t);
set(handles.startertotal,'string',tt);
guidata(hObject, handles);

% hObject    handle to inc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in dec1.
function dec1_Callback(hObject, eventdata, handles)
a=str2num(get(handles.gsqty,'string'))-1;
if(a<0)
    a=0;
else
b=50*a;
set(handles.gsqty,'string',num2str(a));
set(handles.gstotal,'string',num2str(b));
end
handles.t1=str2num(get(handles.gstotal,'string'));
handles.t2=str2num(get(handles.rstotal,'string'));
handles.t3=str2num(get(handles.raitatotal,'string'));
handles.t4=str2num(get(handles.pastatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
tt=num2str(handles.t);
set(handles.startertotal,'string',tt);
guidata(hObject, handles);

% hObject    handle to dec1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in dec4.
function dec4_Callback(hObject, eventdata, handles)
a=str2num(get(handles.raitaqty,'string'))-1;
if(a<0)
    a=0;
else
b=50*a;
set(handles.raitaqty,'string',num2str(a));
set(handles.raitatotal,'string',num2str(b));
end
handles.t1=str2num(get(handles.gstotal,'string'));
handles.t2=str2num(get(handles.rstotal,'string'));
handles.t3=str2num(get(handles.raitatotal,'string'));
handles.t4=str2num(get(handles.pastatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
tt=num2str(handles.t);
set(handles.startertotal,'string',tt);
guidata(hObject, handles);

% hObject    handle to dec4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in dec3.
function dec3_Callback(hObject, eventdata, handles)
a=str2num(get(handles.pastaqty,'string'))-1;
if(a<0)
    a=0;
else
b=450*a;
set(handles.pastaqty,'string',num2str(a));
set(handles.pastatotal,'string',num2str(b));
end
handles.t1=str2num(get(handles.gstotal,'string'));
handles.t2=str2num(get(handles.rstotal,'string'));
handles.t3=str2num(get(handles.raitatotal,'string'));
handles.t4=str2num(get(handles.pastatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
tt=num2str(handles.t);
set(handles.startertotal,'string',tt);
guidata(hObject, handles);

% hObject    handle to dec3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in dec2.
function dec2_Callback(hObject, eventdata, handles)
a=str2num(get(handles.rsqty,'string'))-1;
if(a<0)
    a=0;
else
b=250*a;
set(handles.rsqty,'string',num2str(a));
set(handles.rstotal,'string',num2str(b));
end
handles.t1=str2num(get(handles.gstotal,'string'));
handles.t2=str2num(get(handles.rstotal,'string'));
handles.t3=str2num(get(handles.raitatotal,'string'));
handles.t4=str2num(get(handles.pastatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
tt=num2str(handles.t);
set(handles.startertotal,'string',tt);
guidata(hObject, handles);

% hObject    handle to dec2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in inc4.
function inc4_Callback(hObject, eventdata, handles)
a=str2num(get(handles.raitaqty,'string'))+1;
b=50*a;
set(handles.raitaqty,'string',num2str(a))
set(handles.raitatotal,'string',num2str(b))
handles.t1=str2num(get(handles.raitatotal,'string'));
handles.t2=str2num(get(handles.raitatotal,'string'));
handles.t3=str2num(get(handles.pastatotal,'string'));
handles.t4=str2num(get(handles.raitatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
tt=num2str(handles.t);
set(handles.startertotal,'string',tt);
guidata(hObject, handles);

% hObject    handle to inc4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in inc3.
function inc3_Callback(hObject, eventdata, handles)
a=str2num(get(handles.pastaqty,'string'))+1;
b=450*a;
set(handles.pastaqty,'string',num2str(a))
set(handles.pastatotal,'string',num2str(b))
handles.t1=str2num(get(handles.gstotal,'string'));
handles.t2=str2num(get(handles.rstotal,'string'));
handles.t3=str2num(get(handles.pastatotal,'string'));
handles.t4=str2num(get(handles.raitatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
tt=num2str(handles.t);
set(handles.startertotal,'string',tt);
guidata(hObject, handles);

% hObject    handle to inc3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in inc2.
function inc2_Callback(hObject, eventdata, handles)
a=str2num(get(handles.rsqty,'string'))+1;
b=250*a;
set(handles.rsqty,'string',num2str(a))
set(handles.rstotal,'string',num2str(b))
handles.t1=str2num(get(handles.gstotal,'string'));
handles.t2=str2num(get(handles.rstotal,'string'));
handles.t3=str2num(get(handles.pastatotal,'string'));
handles.t4=str2num(get(handles.raitatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
tt=num2str(handles.t);
set(handles.startertotal,'string',tt);
guidata(hObject, handles);


% --- Executes on button press in back4.
function back4_Callback(hObject, eventdata, handles)
menu;
c=0;
set(handles.gsqty,'string',num2str(c))
set(handles.gstotal,'string',num2str(c))
set(handles.gsqty,'string',num2str(c));
set(handles.gstotal,'string',num2str(c));
set(handles.raitaqty,'string',num2str(c));
set(handles.raitatotal,'string',num2str(c));
set(handles.pastaqty,'string',num2str(c));
set(handles.pastatotal,'string',num2str(c));
set(handles.rsqty,'string',num2str(c));
set(handles.rstotal,'string',num2str(c));
set(handles.raitaqty,'string',num2str(c))
set(handles.raitatotal,'string',num2str(c))
set(handles.pastaqty,'string',num2str(c))
set(handles.pastatotal,'string',num2str(c))
set(handles.rsqty,'string',num2str(c))
set(handles.rstotal,'string',num2str(c))
set(handles.startertotal,'string',c);

% hObject    handle to back4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in confirm.
function confirm_Callback(hObject, eventdata, handles)
% hObject    handle to confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
