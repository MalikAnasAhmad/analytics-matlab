% % url = 'https://sifdb.connectavo.com/api/v1/datapoints/query';
% % 
% % % thingSpeakURL = 'http://api.thingspeak.com/';
% % % thingSpeakWriteURL = [thingSpeakURL 'update'];
% % % writeApiKey = 'Your Write API Key';
% % % fieldName = 'field1';
% % % fieldValue = 42;
% % % response = webwrite(thingSpeakWriteURL,'api_key',writeApiKey,fieldName,fieldValue)
% % RUrl = '{metrics:[{tags:{},name:cybus.psu/current,aggregators:[{name:sum,align_sampling:true,sampling:{value:1,unit:milliseconds}}]}],cache_time:0,start_absolute:1478804400000,end_absolute:1478890800000}';
% % response = webwrite([url RUrl])
% 
% % urlreadpost('https://sifdb.connectavo.com/api/v1/datapoints/query',{'metrics',[{'tags',{},'name','cybus.psu.current'}],'cache_time',0,'start_relative',{'value','479','unit','hours'}})
% % options = weboptions('RequestMethod','post','ContentType','text','ArrayFormat','json');
 options = weboptions('RequestMethod','post','ContentType','text');
% % webread('https://sifdb.connectavo.com/api/v1/datapoints/query',{'metrics':[{'tags':{},'name':'cybus.psu.current'}],'cache_time':0,'start_relative':{'value':'479','unit':'hours'}},options)
% % webread('https://sifdb.connectavo.com/api/v1/datapoints/query',{'metrics',[{'tags',{},'name','cybus.psu.current'}],'cache_time',0,'start_relative',{'value','1000','unit','hours'}},options)
% webread('https://sifdb.connectavo.com/api/v1/datapoints/query','metrics','[{tags,{},name,cybus.psu.current}]','cache_time',0,'start_relative','{value,1000,unit,hours}',options)

% webread('https://sifdb.connectavo.com/api/v1/datapoints/query','name','cybus.psu.current',options)

% options = weboptions('RequestMethod','post');
% data = webread('https://sifdb.connectavo.com/view.html?q=%7B%22metrics%22:%5B%7B%22tags%22:%7B%7D,%22name%22:%22cybus.psu/current%22,%22aggregators%22:%5B%7B%22name%22:%22sum%22,%22align_sampling%22:true,%22sampling%22:%7B%22value%22:%221%22,%22unit%22:%22milliseconds%22%7D%7D%5D%7D%5D,%22cache_time%22:0,%22start_absolute%22:1478804400000,%22end_absolute%22:1478890800000%7D')

webread('https://sifdb.connectavo.com/api/v1/datapoints/query','metrics','[{','tags',{},'name','cybus.psu.current}]','cache_time',0,'start_relative','{','value',1000,'unit','hours}',options)
% webread('https://sifdb.connectavo.com/api/v1/datapoints/query','metrics','[{','tags','{}','name','cybus.psu.current}]','cache_time',0,'start_relative','{','value','1000','unit','hours}',options)
% webread('https://sifdb.connectavo.com/api/v1/datapoints/query','{"metrics":[{"tags":{},"name":"cybus.psu.current"}],"cache_time":0,"start_relative":{"value":1000,"unit":"hours"}}',options)
% webread('https://sifdb.connectavo.com/api/v1/datapoints/query','{"metrics":[{"tags":{},"name":"cybus.psu.current"}],"cache_time":0,"start_relative":{"value":1000,"unit":"hours"}}',options)

%https://sifdb.connectavo.com/view.html?q=%7B%22metrics%22:%5B%7B%22tags%22:%7B%7D,%22name%22:%22cybus.psu/current%22%7D%5D,%22cache_time%22:0,%22start_relative%22:%7B%22value%22:%221000%22,%22unit%22:%22hours%22%7D%7D&d=%5B%7B%22scale%22:false%7D%5D