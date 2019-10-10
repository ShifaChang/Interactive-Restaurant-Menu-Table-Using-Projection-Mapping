function varargout = bbq1(varargin)
% BBQ1 MATLAB code for bbq1.fig
%      BBQ1, by itself, creates a new BBQ1 or raises the existing
%      singleton*.
%
%      H = BBQ1 returns the handle to a new BBQ1 or the handle to
%      the existing singleton*.
%
%      BBQ1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BBQ1.M with the given input arguments.
%
%      BBQ1('Property','Value',...) creates a new BBQ1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bbq1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bbq1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bbq1

% Last Modified by GUIDE v2.5 28-Apr-2018 10:57:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bbq1_OpeningFcn, ...
                   'gui_OutputFcn',  @bbq1_OutputFcn, ...
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


% --- Executes just before bbq1 is made visible.
function bbq1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bbq1 (see VARARGIN)

% Choose default command line output for bbq1
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

% UIWAIT makes bbq1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bbq1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in deckabab.
function deckabab_Callback(hObject, eventdata, handles)
handles.a=str2num(get(handles.kababqty,'string'))-1;
%handles.a=handles.a-1;
if(handles.a<0)
    handles.a=0;
else
handles.b=150*handles.a;
%ans1=num2str(handles.b);
%ans=num2str(handles.a);
set(handles.kababqty,'string',num2str(handles.a));
set(handles.kababtotal,'string',num2str(handles.b));
end
handles.t1=str2num(get(handles.kababtotal,'string'));
handles.t2=str2num(get(handles.tikkatotal,'string'));
handles.t3=str2num(get(handles.malaaitotal,'string'));
handles.t4=str2num(get(handles.greentotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bbqtotal,'string',a);
guidata(hObject, handles);
% hObject    handle to deckabab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in inckabab.
function inckabab_Callback(hObject, eventdata, handles)
handles.b=str2num(get(handles.kababqty,'string'))+1;
%handles.b=handles.b+1;
handles.c=150*handles.b;
%ans1=num2str(handles.c)
%ans=num2str(handles.b)
set(handles.kababqty,'string',num2str(handles.b))
set(handles.kababtotal,'string',num2str(handles.c))
handles.t1=str2num(get(handles.kababtotal,'string'));
handles.t2=str2num(get(handles.tikkatotal,'string'));
handles.t3=str2num(get(handles.malaaitotal,'string'));
handles.t4=str2num(get(handles.greentotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bbqtotal,'string',a);
guidata(hObject, handles);
% hObject    handle to inckabab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in dectikka.
function dectikka_Callback(hObject, eventdata, handles)
handles.c=str2num(get(handles.tikkaqty,'string'))-1;
%handles.c=handles.c-1;
if(handles.c<0)
    hand;es.c=0;
else
handles.d=180*handles.c;
%ans2=num2str(handles.c)
%ans3=num2str(handles.d)
set(handles.tikkaqty,'string',num2str(handles.c))
set(handles.tikkatotal,'string',num2str(handles.d))
end
handles.t1=str2num(get(handles.kababtotal,'string'));
handles.t2=str2num(get(handles.tikkatotal,'string'));
handles.t3=str2num(get(handles.malaaitotal,'string'));
handles.t4=str2num(get(handles.greentotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bbqtotal,'string',a);
guidata(hObject, handles);
% hObject    handle to dectikka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in decmalaaibooti.
function decmalaaibooti_Callback(hObject, eventdata, handles)
handles.dm=str2num(get(handles.malaaibootiqty,'string'))-1;
%handles.dm=handles.dm-1;
if(handles.dm<0)
    handles.dm=0;
else
handles.dm1=230*handles.dm;
%ans8=num2str(handles.dm);
%ans9=num2str(handles.dm1);
set(handles.malaaibootiqty,'string',num2str(handles.dm))
set(handles.malaaitotal,'string',num2str(handles.dm1))
end
handles.t1=str2num(get(handles.kababtotal,'string'));
handles.t2=str2num(get(handles.tikkatotal,'string'));
handles.t3=str2num(get(handles.malaaitotal,'string'));
handles.t4=str2num(get(handles.greentotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bbqtotal,'string',a);
guidata(hObject, handles);
% hObject    handle to incgr
% hObject    handle to decmalaaibooti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in decgreenbooti.
function decgreenbooti_Callback(hObject, eventdata, handles)
handles.g=str2num(get(handles.greenbootiqty,'string'))-1;
%handles.g=handles.g-1;
if(handles.g<0)
   handles.g=0;
else
    
handles.g1=230*handles.g;
%ans6=num2str(handles.g);
%ans7=num2str(handles.g1);
set(handles.greenbootiqty,'string',num2str(handles.g))
set(handles.greentotal,'string',num2str(handles.g1))
end
handles.t1=str2num(get(handles.kababtotal,'string'));
handles.t2=str2num(get(handles.tikkatotal,'string'));
handles.t3=str2num(get(handles.malaaitotal,'string'));
handles.t4=str2num(get(handles.greentotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bbqtotal,'string',a);
guidata(hObject, handles);
% hObject    handle to decgreenbooti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in inctikka.
function inctikka_Callback(hObject, eventdata, handles)
handles.c=str2num(get(handles.tikkaqty,'string'))+1;
%handles.c=handles.c+1;
handles.d=180*handles.c;
%ans2=num2str(handles.c)
%ans3=num2str(handles.d)
set(handles.tikkaqty,'string',num2str(handles.c))
set(handles.tikkatotal,'string',num2str(handles.d))
handles.t1=str2num(get(handles.kababtotal,'string'));
handles.t2=str2num(get(handles.tikkatotal,'string'));
handles.t3=str2num(get(handles.malaaitotal,'string'));
handles.t4=str2num(get(handles.greentotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bbqtotal,'string',a);
guidata(hObject, handles);
% hObject    handle to inctikka (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in incmalaai.
function incmalaai_Callback(hObject, eventdata, handles)
handles.im=str2num(get(handles.malaaibootiqty,'string'))+1;
%handles.im=handles.im+1;
handles.im1=200*handles.im;
%ans10=num2str(handles.im);
%ans11=num2str(handles.im1);
set(handles.malaaibootiqty,'string',num2str(handles.im))
set(handles.malaaitotal,'string',num2str(handles.im1))
handles.t1=str2num(get(handles.kababtotal,'string'));
handles.t2=str2num(get(handles.tikkatotal,'string'));
handles.t3=str2num(get(handles.malaaitotal,'string'));
handles.t4=str2num(get(handles.greentotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bbqtotal,'string',a);
guidata(hObject, handles);% hObject    handle to incmalaai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in incgreen.
function incgreen_Callback(hObject, eventdata, handles)
handles.g=str2num(get(handles.greenbootiqty,'string'))+1;
%handles.g=handles.g+1;
handles.g1=230*handles.g;
%ans6=num2str(handles.g);
%ans7=num2str(handles.g1);
set(handles.greenbootiqty,'string',num2str(handles.g))
set(handles.greentotal,'string',num2str(handles.g1))
handles.t1=str2num(get(handles.kababtotal,'string'));
handles.t2=str2num(get(handles.tikkatotal,'string'));
handles.t3=str2num(get(handles.malaaitotal,'string'));
handles.t4=str2num(get(handles.greentotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
a=num2str(handles.t);
set(handles.bbqtotal,'string',a);
guidata(hObject, handles);
% hObject    handle to incgreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
menu
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in confirm.
function confirm_Callback(hObject, eventdata, handles)
% hObject    handle to confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
