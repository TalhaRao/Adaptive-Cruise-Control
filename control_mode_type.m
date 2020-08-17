classdef (Enumeration) control_mode_type < Simulink.IntEnumType
    enumeration
        driverControl(0)
        speedTracking(1)
        distanceTracking(2)
        
    end
end
