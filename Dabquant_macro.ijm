#Complete macro written below


imageTitle=getTitle();
run("Colour Deconvolution", "vectors=[H DAB]");
selectWindow(imageTitle + "-(Colour_2)");
setAutoThreshold("Default no-reset");
//run("Threshold...");
setThreshold(0, 188);
//setThreshold(0, 188);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Measure");


#Macro listed below plus further annotation 

#Methodology is derived from: doi:10.21769/BioProtoc.3465.
#Semi-quantitative Determination of Protein Expression using Immunohistochemistry Staining and Analysis: An Integrated Protocol
#Alexandra R Crowe, Wei Yue*


Prior to analysis I set up the measurements

Analyze -> set measurements -> slect "area" ( size of the total field of view) and "mean gray value" (represents the quantified dab signal) and "display label" (the lable of the image)

#below code uses comand to get file name (for use in batch processing tools) 

imageTitle=getTitle();

# Colour deconvolution is used to separate the different channels of colour uising inbuilt DAB decovolution, note line 29 concatentates the image title variable and looks for the dab colour

run("Colour Deconvolution", "vectors=[H DAB]");
selectWindow(imageTitle + "-(Colour_2)");
setAutoThreshold("Default no-reset");
//run("Threshold...");
setThreshold(0, 188);
//setThreshold(0, 188);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Measure");




