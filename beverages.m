function varargout = Gui5(varargin)
% GUI5 MATLAB code for Gui5.fig
%      GUI5, by itself, creates a new GUI5 or raises the existing
%      singleton*.
%
%      H = GUI5 returns the handle to a new GUI5 or the handle to
%      the existing singleton*.
%
%      GUI5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI5.M with the given input arguments.
%
%      GUI5('Property','Value',...) creates a new GUI5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui5

% Last Modified by GUIDE v2.5 28-Apr-2018 10:52:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui5_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui5_OutputFcn, ...
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


% --- Executes just before Gui5 is made visible.
function Gui5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gui5 (see VARARGIN)

% Choose default command line output for Gui5
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

% UIWAIT makes Gui5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gui5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in colddrink.
function colddrink_Callback(hObject, eventdata, handles)
% hObject    handle to colddrink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cdinc.
function cdinc_Callback(hObject, eventdata, handles)
handles.c=str2num(get(handles.cdqty,'string'))+1;
handles.d=50*handles.c;
set(handles.cdqty,'string',num2str(handles.c))
set(handles.cdtotal,'string',num2str(handles.d))
handles.t1=str2num(get(handles.cdtotal,'string'));
handles.t2=str2num(get(handles.watertotal,'string'));
handles.t3=str2num(get(handles.juicetotal,'string'));
handles.t4=str2num(get(handles.teatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bvtotal,'string',a);
guidata(hObject, handles);

% hObject    handle to cdinc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in cddec.
function cddec_Callback(hObject, eventdata, handles)
handles.a=str2num(get(handles.cdqty,'string'))-1;
if(handles.a<0)
    handles.a=0;
else
handles.b=50*handles.a;
set(handles.cdqty,'string',num2str(handles.a));
set(handles.cdtotal,'string',num2str(handles.b));
end
handles.t1=str2num(get(handles.cdtotal,'string'));
handles.t2=str2num(get(handles.watertotal,'string'));
handles.t3=str2num(get(handles.juicetotal,'string'));
handles.t4=str2num(get(handles.teatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bvtotal,'string',a);
guidata(hObject, handles);

% hObject    handle to cddec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in waterdec.
function waterdec_Callback(hObject, eventdata, handles)
handles.g=str2num(get(handles.waterqty,'string'))-1;
if(handles.g<0)
    handles.g=0;
else
handles.h=50*handles.g;
set(handles.waterqty,'string',num2str(handles.g));
set(handles.watertotal,'string',num2str(handles.h));
end
handles.t1=str2num(get(handles.cdtotal,'string'));
handles.t2=str2num(get(handles.watertotal,'string'));
handles.t3=str2num(get(handles.juicetotal,'string'));
handles.t4=str2num(get(handles.teatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bvtotal,'string',a);
guidata(hObject, handles);

% hObject    handle to waterdec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in juicedec.
function juicedec_Callback(hObject, eventdata, handles)
handles.k=str2num(get(handles.juiceqty,'string'))-1;
if(handles.k<0)
    handles.k=0;
else
handles.l=50*handles.k;
set(handles.juiceqty,'string',num2str(handles.k));
set(handles.juicetotal,'string',num2str(handles.l));
end
handles.t1=str2num(get(handles.cdtotal,'string'));
handles.t2=str2num(get(handles.watertotal,'string'));
handles.t3=str2num(get(handles.juicetotal,'string'));
handles.t4=str2num(get(handles.teatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bvtotal,'string',a);
guidata(hObject, handles);

% hObject    handle to juicedec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in teadec.
function teadec_Callback(hObject, eventdata, handles)
handles.m=str2num(get(handles.teaqty,'string'))-1;
if(handles.m<0)
    handles.m=0;
else
handles.n=50*handles.m;
set(handles.teaqty,'string',num2str(handles.m));
set(handles.teatotal,'string',num2str(handles.n));
end
handles.t1=str2num(get(handles.cdtotal,'string'));
handles.t2=str2num(get(handles.watertotal,'string'));
handles.t3=str2num(get(handles.juicetotal,'string'));
handles.t4=str2num(get(handles.teatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bvtotal,'string',a);
guidata(hObject, handles);

% hObject    handle to teadec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in waterinc.
function waterinc_Callback(hObject, eventdata, handles)
handles.e=str2num(get(handles.waterqty,'string'))+1;
handles.f=60*handles.e;
set(handles.waterqty,'string',num2str(handles.e))
set(handles.watertotal,'string',num2str(handles.f))
handles.t1=str2num(get(handles.cdtotal,'string'));
handles.t2=str2num(get(handles.watertotal,'string'));
handles.t3=str2num(get(handles.juicetotal,'string'));
handles.t4=str2num(get(handles.teatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bvtotal,'string',a);
guidata(hObject, handles);

% hObject    handle to waterinc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in juiceinc.
function juiceinc_Callback(hObject, eventdata, handles)
handles.i=str2num(get(handles.juiceqty,'string'))+1;
handles.j=80*handles.i;
set(handles.juiceqty,'string',num2str(handles.i))
set(handles.juicetotal,'string',num2str(handles.j))
handles.t1=str2num(get(handles.cdtotal,'string'));
handles.t2=str2num(get(handles.watertotal,'string'));
handles.t3=str2num(get(handles.juicetotal,'string'));
handles.t4=str2num(get(handles.teatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bvtotal,'string',a);
guidata(hObject, handles);
% hObject    handle to juiceinc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in teainc.
function teainc_Callback(hObject, eventdata, handles)
handles.o=str2num(get(handles.teaqty,'string'))+1;
handles.p=50*handles.o;
set(handles.teaqty,'string',num2str(handles.o))
set(handles.teatotal,'string',num2str(handles.p))
handles.t1=str2num(get(handles.cdtotal,'string'));
handles.t2=str2num(get(handles.watertotal,'string'));
handles.t3=str2num(get(handles.juicetotal,'string'));
handles.t4=str2num(get(handles.teatotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bvtotal,'string',a);
guidata(hObject, handles);

% hObject    handle to teainc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tea.










% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
menu;
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in confirm.
function confirm_Callback(hObject, eventdata, handles)
% hObject    handle to confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
