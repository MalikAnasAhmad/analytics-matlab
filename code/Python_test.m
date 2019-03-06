% % %r=python('D:\Connectavo\Google Drive\malik.anas.ahmad@gmail.com\Connectavo\code\sqd.py','3.5')
% % 
% %  commandStr = 'python D:\Connectavo\Google Drive\malik.anas.ahmad@gmail.com\Connectavo\code\sqr.py 2';
% %  [status, commandOut] = system(commandStr);
% %  if status==0
% %      fprintf('squared result is %d\n',str2num(commandOut));
% %  else
% %  a=1212
% %  end
% % P = py.sys.path;
% folder = fullfile(matlabroot,'help','examples');
% F = py.os.listdir(folder)
% 
% workspace = py.dict(pyargs('x',1,'y',6))
% res = py.eval('x+y',workspace)
% res = py.eval('1+6',py.dict)

[own_path, ~, ~] = fileparts(mfilename('fullpath'));
module_path = fullfile(own_path, '..');
python_path = py.sys.path;
if count(python_path, module_path) == 0
    insert(python_path, int32(0), module_path);
end
py.our_module.our_script.our_function('Hello')