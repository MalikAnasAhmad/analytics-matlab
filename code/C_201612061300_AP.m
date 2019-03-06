% %  params = '{"metrics":[{"tags":{},"name":"cybus.psu.current"}],"cache_time":0,"start_relative":{"value":"479","unit":"hours"}}';
% % % %r = requests.post('https://sifdb.connectavo.com/api/v1/datapoints/query',params)
% % % %currentData = r.json()
% % % 
% % % url = 'https://sifdb.connectavo.com/api/v1/datapoints/query';
% % % webread('https://sifdb.connectavo.com/api/v1/datapoints/query' -H 'Host: sifdb.connectavo.com' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Content-Type: application/json' -H 'X-Requested-With: XMLHttpRequest' -H 'Referer: https://sifdb.connectavo.com/' -H 'Content-Length: 127' -H 'Cookie: _ga=GA1.2.1170951588.1479802205; __utma=124294424.1170951588.1479802205.1479802206.1479802206.1; __utmz=124294424.1479802206.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); __utmc=124294424' -H 'Connection: keep-alive')
% % % 
% % % %curl 'https://sifdb.connectavo.com/api/v1/datapoints/query' -H 'Host: sifdb.connectavo.com' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Content-Type: application/json' -H 'X-Requested-With: XMLHttpRequest' -H 'Referer: https://sifdb.connectavo.com/' -H 'Content-Length: 127' -H 'Cookie: _ga=GA1.2.1170951588.1479802205; __utma=124294424.1170951588.1479802205.1479802206.1479802206.1; __utmz=124294424.1479802206.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); __utmc=124294424' -H 'Connection: keep-alive'
% % % 
% % % %
% % 
% %url = 'https://sifdb.connectavo.com/api/v1/datapoints/query';
% url = 'https://sifdb.connectavo.com/view.html?q={%22metrics%22:[{%22tags%22:{},%22name%22:%22cybus.psu/current%22,%22aggregators%22:[{%22name%22:%22sum%22,%22align_sampling%22:true,%22sampling%22:{%22value%22:%221%22,%22unit%22:%22milliseconds%22}}]}],%22cache_time%22:0,%22start_absolute%22:1478804400000,%22end_absolute%22:1478890800000}';
% % % url = [api '']
% % 
% % %webread('https://sifdb.connectavo.com/view.html?q={%22metrics%22:[{%22tags%22:{},%22name%22:%22cybus.psu/current%22,%22aggregators%22:[{%22name%22:%22sum%22,%22align_sampling%22:true,%22sampling%22:{%22value%22:%221%22,%22unit%22:%22milliseconds%22}}]}],%22cache_time%22:0,%22start_absolute%22:1478804400000,%22end_absolute%22:1478890800000}')
% % %webread('https://sifdb.connectavo.com/api/v1/datapoints/query/metrics/tags/name/cybus.psu/current')
% % contents = urlread('https://sifdb.connectavo.com/view.html?q={%22metrics%22:[{%22tags%22:{},%22name%22:%22cybus.psu/current%22,%22aggregators%22:[{%22name%22:%22sum%22,%22align_sampling%22:true,%22sampling%22:{%22value%22:%221%22,%22unit%22:%22milliseconds%22}}]}],%22cache_time%22:0,%22start_absolute%22:1478804400000,%22end_absolute%22:1478890800000}');
% % data = parse_json(contents);
% 
% options = weboptions('RequestMethod','post');
% data = webread(url,'term',options);
% 
% '{"metrics":[{"tags":{},"name":"cybus.psu/current","aggregators":[{"name":"sum","align_sampling":true,"sampling":{"value":"1","unit":"milliseconds"}}]}],"cache_time":0,"start_absolute":1478804400000,"end_absolute":1478890800000}'

 %webread('https://sifdb.connectavo.com/api/v1/datapoints/query')
%url = 'https://sifdb.connectavo.com/api/v1/datapoints/query';
url = 'https://sifdb.connectavo.com/api/v1/datapoints/query=%7B%22metrics%22:%5B%7B%22tags%22:%7B%7D,%22name%22:%22cybus.psu/current%22,%22aggregators%22:%5B%7B%22name%22:%22sum%22,%22align_sampling%22:true,%22sampling%22:%7B%22value%22:%221%22,%22unit%22:%22seconds%22%7D%7D%5D%7D%5D,%22cache_time%22:0,%22start_relative%22:%7B%22value%22:%221%22,%22unit%22:%22days%22%7D%7D&d=%5B%7B%22scale%22:false%7D%5D';
options = weboptions('RequestMethod','post');
%data = webread(url,{'metrics',{'tags',{},'name','cybus.psu.current'},'cache_time',0,'start_relative',{'value',1000,'unit','hours'}},options);
% data = webread(url,'name','cybus.psu.current',options);
% URL = 'https://sifdb.connectavo.com/api/v1/datapoints/query';
% str = urlread(URL,'Post',{'term','urlread'})

% https://sifdb.connectavo.com/api/v1/datapoints/query
% '{"metrics":[{"tags":{},"name":"cybus.psu/current","aggregators":[{"name":"sum","align_sampling":true,"sampling":{"value":"1","unit":"milliseconds"}}]}],"cache_time":0,"start_absolute":1478804400000,"end_absolute":1478890800000}'
% data = webread([url '{''metrics'':[{''tags'':{},''name'':''cybus.psu/current'',''aggregators'':[{''name'':''sum'',''align_sampling'':true,''sampling'':{''value'':1,''unit'':''milliseconds''}}]}],''cache_time'':0,''start_absolute'':1478804400000,''end_absolute'':1478890800000}'],options);
data = webread(url,options);
% data = webread([url '{metrics:[{tags:{},name:cybus.psu/current,aggregators:[{name:sum,align_sampling:true,sampling:{value:1,unit:milliseconds}}]}],cache_time:0,start_absolute:1478804400000,end_absolute:1478890800000}'],options);