function varargout = GUIstart(varargin)
% GUISTART MATLAB code for GUIstart.fig
%      GUISTART, by itself, creates a new GUISTART or raises the existing
%      singleton*.
%
%      H = GUISTART returns the handle to a new GUISTART or the handle to
%      the existing singleton*.
%
%      GUISTART('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUISTART.M with the given input arguments.
%
%      GUISTART('Property','Value',...) creates a new GUISTART or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIstart_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIstart_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menucall.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIstart

% Last Modified by GUIDE v2.5 11-Apr-2018 22:35:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIstart_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIstart_OutputFcn, ...
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


% --- Executes just before GUIstart is made visible.
function GUIstart_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIstart (see VARARGIN)
% create an axes that spans the whole gui
% ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% % import the background image and show it on the axes
% bg = imread('D:\projeect\GUI\DWAzBOrVwAAKQdN.jpg'); imagesc(bg);
% % prevent plotting over the background and turn the axis off
% set(ah,'handlevisibility','off','visible','off')
% % making sure the background is behind all the other uicontrols
% uistack(ah, 'bottom');
% % Choose default command line output for GUIstart
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIstart wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIstart_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in menucall.
function menucall_Callback(hObject, eventdata, handles)
menu

% hObject    handle to menucall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bill.
function bill_Callback(hObject, eventdata, handles)
% hObject    handle to bill (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
