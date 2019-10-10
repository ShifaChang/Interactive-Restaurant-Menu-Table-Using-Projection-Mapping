

 clc;
 clear all; 
 close all;
 vid = videoinput('kinect',1, 'RGB_640x480')
depth = videoinput('kinect',2);
set(vid, 'FramesPerTrigger', Inf);
set(vid, 'ReturnedColorspace', 'rgb')
%vid.FrameGrabInterval = 5;
%vid.ROIPosition = [296 37 505 509];

vid.ROIPosition = [152 47 339 177];

depth.ROIPosition = [152 47 339 177];


%kk=0;
%start the video aquisition here
preview(vid)
preview(depth)
%figure
%run('ffood.m')
run('GUIstart.m')
% ss variable set fot one time touch
ss=1;
% Set a loop that stop after 100 frames of aquisition
for w=1:1
    i=getsnapshot(vid);
depthdataa=getsnapshot(depth);
    %i=imread('E:\projeect\fingertip\index.jpg');
%i=imrotate(i,270);
diff_im = imsubtract(i(:,:,1),   rgb2gray(i)); %mengurangi channel merah dengan grayscale
diff_im = medfilt2(diff_im, [10 10]);%filtering
diff_im = imadjust(diff_im); %melakukan color-maping pada hasil pengurangan
level = graythresh(diff_im); %menemukan threshold dengan otsu methode
bw = im2bw(diff_im,level);
bw = bwareaopen(bw, 40);;
 se = strel('disk',5);
 bw=imclose(bw,se);
 bw=bwareafilt(bw,1);
s = regionprops(bw,'Centroid','ConvexHull');
%figure
imshow(bw)
hold on
for object=1:length(s)
plot(s.Centroid(:,1),s.Centroid(:,2),'b*')
%plot(s.ConvexHull(:,1),s.ConvexHull(:,2),'g*');
%  [idx,C] = kmeans(s.ConvexHull,8);
%  plot(C(:,1),C(:,2),'r*') 
  fingervalues=s.ConvexHull(:,2)<s.Centroid(:,2);
 j=0;
 for i=1:size(s.ConvexHull,1)
     if fingervalues(i)
         j=j+1;
         fingersconhull(j,:)=s.ConvexHull(i,:);
 
     
     end
 end
 %plot(fingersconhull(:,1),fingersconhull(:,2),'b*')
  [idx,C] = kmeans(fingersconhull,5);
  e=1;
  for t=1:length(C)
      d=sqrt((C(t,1)-s.Centroid(:,1))^2+(C(t,2)-s.Centroid(:,2))^2)
      %r[]=max(d)
      %plot([s.Centroid(:,1) C(t,1)] , [s.Centroid(:,2),C(t,2)]);
      %d=pdist(pos,'euclidean')
      if d>30 
          tips(e,1)=C(t,1);
          tips(e,2)=C(t,2);
          e=e+1;
          plot(C(t,1),C(t,2),'r*')
      end
      %t=t+1
  end
  
  rr=pdist(tips);
  while (min(rr)<10)
      
      ncluster=size(tips,1);
      if ncluster>1
      
  [idx,tips] = kmeans(tips,ncluster-1);
      else
          break
      
      end
      %plot(C(:,1),C(:,2),'r*') 
rr=pdist(tips);
  end
  %[tx,tx]=kmeans(CC,1)
     plot(tips(:,1),tips(:,2),'g*')
     if (size(tips,1)==1)
         import java.awt.Robot; 
import java.awt.event.*; 
mouse = Robot; 
mouse.mouseMove(1366-(floor(tips(1)*1366/640)), floor(tips(2)*768/480));
%depthdataa=getsnapshot(depth);
handxx=uint16(round(tips(2)));
handyy=uint16(round(tips(1)));

handdepth=depthdataa(handxx, handyy)
if handdepth>1073
    if ss == 1
    disp('touched')
mouse.mousePress(InputEvent.BUTTON1_MASK);
pause(.1)
mouse.mouseRelease(InputEvent.BUTTON1_MASK);
ss = 0;
    end
else 
    ss = 1;
end
     %plot(tx(:,1),tx(:,2),'b*')
     end
end
pause(0.5)
end
hold off
%close preview
%flushdata
%imaqreset