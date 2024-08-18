%figure 2 

% MATLAB code to plot the Oxygen-Hemoglobin Dissociation Curve (ODC) 

 

% Define the range for the partial pressure of oxygen (P) 

P = linspace(0, 100, 500);  % P(t) from 0 to 100 mmHg 

 

% Calculate oxygen saturation (SO2) using the provided equation 

SO2 = (P.^3 + 150.*P) ./ (P.^3 + 150.*P + 23400); 

 

% Plot the Oxygen-Hemoglobin Dissociation Curve 

figure; 

plot(P, SO2, 'b-', 'LineWidth', 2); 

xlabel('Partial Pressure of Oxygen (P_{O2}) [mmHg]'); 

ylabel('Oxygen Saturation (S_{O2}) [%]'); 

title('Oxygen-Hemoglobin Dissociation Curve (ODC)'); 

grid on; 

 

% Enhance plot aesthetics 

set(gca, 'FontSize', 12); 

ylim([0 1]);  % Oxygen saturation ranges from 0 to 100% 

xlim([0 100]);  % Partial pressure of oxygen ranges from 0 to 100 mmHg 

yticks(0:0.1:1); 

yticklabels(0:10:100);  % Convert y-axis to percentage for clarity 
