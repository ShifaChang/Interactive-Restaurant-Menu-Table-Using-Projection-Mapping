function varargout = ffood(varargin)
% FFOOD MATLAB code for ffood.fig
%      FFOOD, by itself, creates a new FFOOD or raises the existing
%      singleton*.
%
%      H = FFOOD returns the handle to a new FFOOD or the handle to
%      the existing singleton*.
%
%      FFOOD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FFOOD.M with the given input arguments.
%
%      FFOOD('Property','Value',...) creates a new FFOOD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ffood_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ffood_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ffood

% Last Modified by GUIDE v2.5 20-Apr-2018 12:09:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ffood_OpeningFcn, ...
                   'gui_OutputFcn',  @ffood_OutputFcn, ...
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


% --- Executes just before ffood is made visible.
function ffood_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ffood (see VARARGIN)

% Choose default command line output for ffood
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ffood wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ffood_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)


close;
menu
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in brdec.
function brdec_Callback(hObject, eventdata, handles)
a=str2num(get(handles.brqty,'string'))-1;
if(a<0)
    a=0;
else
b=170*a;
set(handles.brqty,'string',num2str(a));
set(handles.brtotal,'string',num2str(b));
end
handles.t1=str2num(get(handles.brtotal,'string'));
handles.t2=str2num(get(handles.shwtotal,'string'));
handles.t3=str2num(get(handles.cstotal,'string'));
handles.t4=str2num(get(handles.brgrtotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
aa=num2str(handles.t);
set(handles.fftotal,'string',aa);
guidata(hObject, handles);

% hObject    handle to brdec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in brgrdec.
function brgrdec_Callback(hObject, eventdata, handles)
a=str2num(get(handles.brgrqty,'string'))-1;
if(a<0)
    a=0;
else
b=400*a;
set(handles.brgrqty,'string',num2str(a));
set(handles.brgrtotal,'string',num2str(b));
end
handles.t1=str2num(get(handles.brtotal,'string'));
handles.t2=str2num(get(handles.shwtotal,'string'));
handles.t3=str2num(get(handles.cstotal,'string'));
handles.t4=str2num(get(handles.brgrtotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
aa=num2str(handles.t);
set(handles.fftotal,'string',aa);
guidata(hObject, handles);

% hObject    handle to brgrdec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in csdec.
function csdec_Callback(hObject, eventdata, handles)
a=str2num(get(handles.csqty,'string'))-1;
if(a<0)
    a=0;
else
b=100*a;
set(handles.csqty,'string',num2str(a));
set(handles.cstotal,'string',num2str(b));
end
handles.t1=str2num(get(handles.brtotal,'string'));
handles.t2=str2num(get(handles.shwtotal,'string'));
handles.t3=str2num(get(handles.cstotal,'string'));
handles.t4=str2num(get(handles.brgrtotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
aa=num2str(handles.t);
set(handles.fftotal,'string',aa);
guidata(hObject, handles);

% hObject    handle to csdec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in shdec.
function shdec_Callback(hObject, eventdata, handles)
a=str2num(get(handles.shwqty,'string'))-1;
if(a<0)
    a=0;
else
b=110*a;
set(handles.shwqty,'string',num2str(a));
set(handles.shwtotal,'string',num2str(b));
end
handles.t1=str2num(get(handles.brtotal,'string'));
handles.t2=str2num(get(handles.shwtotal,'string'));
handles.t3=str2num(get(handles.cstotal,'string'));
handles.t4=str2num(get(handles.brgrtotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
aa=num2str(handles.t);
set(handles.fftotal,'string',aa);
guidata(hObject, handles);

% hObject    handle to shdec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in brinc.
function brinc_Callback(hObject, eventdata, handles)
a=str2num(get(handles.brqty,'string'))+1;
b=170*a;
set(handles.brqty,'string',num2str(a))
set(handles.brtotal,'string',num2str(b))
handles.t1=str2num(get(handles.brtotal,'string'));
handles.t2=str2num(get(handles.shwtotal,'string'));
handles.t3=str2num(get(handles.cstotal,'string'));
handles.t4=str2num(get(handles.brgrtotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
aa=num2str(handles.t);
set(handles.fftotal,'string',aa);
guidata(hObject, handles);

% hObject    handle to brinc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in brgrinc.
function brgrinc_Callback(hObject, eventdata, handles)
a=str2num(get(handles.brgrqty,'string'))+1;
b=400*a;
set(handles.brgrqty,'string',num2str(a))
set(handles.brgrtotal,'string',num2str(b))
handles.t1=str2num(get(handles.brtotal,'string'));
handles.t2=str2num(get(handles.shwtotal,'string'));
handles.t3=str2num(get(handles.cstotal,'string'));
handles.t4=str2num(get(handles.brgrtotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
aa=num2str(handles.t);
set(handles.fftotal,'string',aa);
guidata(hObject, handles);

% hObject    handle to brgrinc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in csinc.
function csinc_Callback(hObject, eventdata, handles)
a=str2num(get(handles.csqty,'string'))+1;
b=100*a;
set(handles.csqty,'string',num2str(a))
set(handles.cstotal,'string',num2str(b))
handles.t1=str2num(get(handles.brtotal,'string'));
handles.t2=str2num(get(handles.shwtotal,'string'));
handles.t3=str2num(get(handles.cstotal,'string'));
handles.t4=str2num(get(handles.brgrtotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
aa=num2str(handles.t);
set(handles.fftotal,'string',aa);
guidata(hObject, handles);

% hObject    handle to csinc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in shwinc.
function shwinc_Callback(hObject, eventdata, handles)
a=str2num(get(handles.shwqty,'string'))+1;
b=110*a;
set(handles.shwqty,'string',num2str(a))
set(handles.shwtotal,'string',num2str(b))
handles.t1=str2num(get(handles.brtotal,'string'));
handles.t2=str2num(get(handles.shwtotal,'string'));
handles.t3=str2num(get(handles.cstotal,'string'));
handles.t4=str2num(get(handles.brgrtotal,'string'));
handles.t=handles.t1+handles.t2+handles.t3+handles.t4;
aa=num2str(handles.t);
set(handles.fftotal,'string',aa);
guidata(hObject, handles);

% hObject    handle to shwinc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in confirm.
function confirm_Callback(hObject, eventdata, handles)
f1=get(handles.broast,'string');
f2=get(handles.brqty,'string');
f3=(get(handles.brtotal,'string'));
a=str2num(f2);
if(a==0)
    %f4=strcat(f1,f2,f3);
    %f4=[];
else
   % f4=strcat(f1,"(",f2,")=   ",f3);
   ii=f1;
   q=f2;
   p=f3;
   
end
%if(exist('bill.txt'))
 %save('bill.txt','i','q','p')
%else
    save('total.txt','ii','q','p')
%end
%sh1=get(handles.shwarmaa,'string');
%sh2=get(handles.shwqty,'string');
%sh3=(get(handles.shwtotal,'string'));
%b=str2num(sh2)
%if(b==0)
  %  sh4=strcat(sh1,sh2,sh3);
  %  sh4=[];
%else
 %   sh4=strcat(sh1,"(",sh2,")=",sh3);
%end
%if(exist('bill.txt'))
 %   save('bill.txt','sh4')
%else
 %   save('bill.txt','sh4')
%end
% hObject    handle to confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
