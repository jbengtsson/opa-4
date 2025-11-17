program opa;

// To get the terminal console in Windows, uncomment the lines with //WCON
// {$APPTYPE CONSOLE} //WCON

uses
  // windows,  //WCON
  Interfaces, Forms,
  globlib,
  latfilelib,
  elemlib,
  linoplib,
  chromlib,
  chromreslib,
  chromelelib,
  lgbeditlib,
  tracklib,
  opamenu {MenuForm},
  opaeditor,
    oelecreate {EditElemCreate},
    oeleedit {EditElemSet},
    osegedit {EditSegSet},
  opatexteditor {FormTxtEdt},
  opalgbedit,
  opalinop {optic},
    ostartmenu {startsel},
    obetenvmag {setEnvel},
    omatching {Match},
    omatchscan {setMatchScan},
    otunematrix {TuneMatrix},
    owriteomrk {WOMK},
  opatunediag {TunePlot},
  opamomentum {momentum},
  opabucket {BucketView},
  opachroma {Chroma},
    chamframe {CHam: TFrame},
    ochromsvector {SVectorPlot},
  opaorbit {Orbit},
  opageometry {Geometry},
  opacurrents {Currents},
  opatrackps {TrackP},
  opatrackda {TrackDA},
  opatracktt {TrackT},
  asaux in '../com/asaux.pas',
  asfigure in '../com/asfigure.pas' {Figure: TFrame},
  vgraph in '../com/vgraph.pas',
  conrect in '../com/conrect.pas',
  testcode;

{$R *.res}

begin
  Application.Scaled := True;
  Application.Initialize;

  // Main form MUST be created first – this defines Application.MainForm.
  Application.CreateForm(TMenuForm, MenuForm);

  // Create additional forms
  Application.CreateForm(TEditElemCreate, EditElemCreate);
  Application.CreateForm(TEditElemSet, EditElemSet);
  Application.CreateForm(TEditSegSet, EditSegSet);
  Application.CreateForm(Tstartsel, startsel);
  Application.CreateForm(TsetEnvel, setEnvel);
  Application.CreateForm(TMatch, Match);
  Application.CreateForm(TsetMatchScan, setMatchScan);
  Application.CreateForm(TWOMK, WOMK);
  Application.CreateForm(TTuneMatrix, TuneMatrix);
  Application.CreateForm(Tmomentum, momentum);
  Application.CreateForm(TTunePlot, TunePlot);
  Application.CreateForm(TSVectorPlot, SVectorPlot);

  Application.Run;
end.
