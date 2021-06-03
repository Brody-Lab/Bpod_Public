function generate_BpodSettings_file

p = bSettings('get','GENERAL','Bpod_Code_Directory');

file = [p,'\Bpod Local\Settings\BpodSettings.mat'];

if exist(file,'file')
    try
        delete(file);
    catch
        disp('Unable to delete existing settings file');
    end
end

BpodSettings.PhoneHomeRigID     = '';
BpodSettings.PhoneHome          = 0;
BpodSettings.LastCOMPort        = 'COM4';
BpodSettings.BcontrolRootFolder = 'C:\ratter';

try
    save(file,'BpodSettings');
    disp('New Bpod Settings file saved');
catch
    disp('Unable to save new settings file');
end
