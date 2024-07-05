select count(*), 
g.beacon_demand_partner_id, 
a.DemandPartnerName,
g.trigger_type, 
g.trigger_metadata 
from prof_services.geoedge g
left join adinspector.adinspector a 
on g.beacon_session_id = a.SessionID
where ts >= current_date() - interval 1 day
and a.AdTypeEnum = 13 
AND g.trigger_type != 'Ad Load Time'
AND g.trigger_type != 'Ad Time From Start'
AND g.trigger_type != 'Animation Max Length'
AND g.trigger_type != 'Auto Redirect'
AND g.trigger_type != 'Back Button Hijack'
AND g.trigger_type != 'Capture Complete Time'
AND g.trigger_type != 'Capture Requests Size'
AND g.trigger_type != 'Creative File Size'
AND g.trigger_type != 'Deceptive Ad'
AND g.trigger_type != 'Deceptive Site'
AND g.trigger_type != 'Extreme Offensive Content'
AND g.trigger_type != 'From a Network Domain'
#AND g.trigger_type != 'High CPU Usage'
AND g.trigger_type != 'HTML5 Image File Size'
AND g.trigger_type != 'HTML5 Initial File Size'
AND g.trigger_type != 'HTML5 JS File Size'
AND g.trigger_type != 'HTML5 Max Number of Requests'
AND g.trigger_type != 'HTML5 Subsequent File Size'
#AND g.trigger_type != 'In-Banner Video'
AND g.trigger_type != 'Javascript Alert On Exit'
AND g.trigger_type != 'JS Alert on Entry'
AND g.trigger_type != 'Landing Page Cascading'
AND g.trigger_type != 'Landing Page Change'
AND g.trigger_type != 'Landing Page Error'
AND g.trigger_type != 'Malicious In Page'
AND g.trigger_type != 'Malicious URL Post-Click'
AND g.trigger_type != 'Malicious URL Pre-Click'
#AND g.trigger_type != 'Max Number of Requests'
#AND g.trigger_type != 'Missing Media File in VAST'
AND g.trigger_type != 'Multiple Pops'
AND g.trigger_type != 'Offensive Content'
AND g.trigger_type != 'Pop-Up Ad'
AND g.trigger_type != 'Related to Vertical'
AND g.trigger_type != 'SSL Certificate Violation'
#AND g.trigger_type != 'VAST From Start'
#AND g.trigger_type != 'Video Auto Scroll'
#AND g.trigger_type != 'Video Autoplay'
#AND g.trigger_type != 'Video Bit Rate'
#AND g.trigger_type != 'Video Companion Ads'
#AND g.trigger_type != 'Video Length'
#AND g.trigger_type != 'Video Required File Types'
#AND g.trigger_type != 'VPAID Format In The Response'
group by 2,3,4,5