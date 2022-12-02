<html>


<div class=WordSection1>

<p class=MsoNormal style='margin-bottom:.1in;line-height:normal;background:
white'><b><span style='font-size:23.5pt;font-family:"var(--brand-font-family-brand)",serif;
color:#2D7EEA'>README   Period-Over-Period Implementations</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>LookML
code in this project has been developed using base code from: </span></p>

<p class=MsoNormal style='margin-bottom:13.2pt;text-indent:.5in;line-height:
normal;background:white'><span style='font-size:10.5pt;font-family:"inherit",serif;
color:#3A4245'>-Molly Lippsett 2022, Methods for Period Over Period (PoP)
Analysis in Looker,[LookML
Example],https://community.looker.com/technical-tips-tricks-1021/methods-for-period-over-period-pop-analysis-in-looker-30823</span></p>

<p class=MsoNormal style='margin-bottom:13.2pt;text-indent:.5in;line-height:
normal;background:white'><span style='font-size:10.5pt;font-family:"inherit",serif;
color:#3A4245'> -Llooker 2022, Lookml period over period analysis in different
dialects, [views],https://github.com/llooker/period_over_period_analysis</span></p>

<p class=MsoNormal style='margin-bottom:.1in;line-height:normal;background:
white'><b><span style='font-size:23.5pt;font-family:"var(--brand-font-family-brand)",serif;
color:#3A4245'>&nbsp;</span></b></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var(--brand-font-family-brand)",serif;color:#2D7EEA'>Available
Methods</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>The
following methods have been implemented in this project for easy lift and drop
into other projects. Selections can be made according to required period comparison
and complexity preference.  Instructions for implementing each are detailed
below.</span></p>

<p class=MsoNormal style='margin-bottom:13.2pt;text-indent:.5in;line-height:
normal;background:white'><span style='font-size:10.5pt;font-family:"inherit",serif;
color:#3A4245'>&nbsp;</span></p>

<p style='margin-top:0in;margin-right:0in;margin-bottom:6.0pt;margin-left:.75in;
text-indent:-.25in;background:white'><span style='font-size:10.0pt;font-family:
Symbol;color:#202124'> <span style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-size:10.5pt;font-family:Roboto;color:#202124'>1.
Any Two Native Timeframes</span></p>

<p style='margin-top:0in;margin-right:0in;margin-bottom:6.0pt;margin-left:.75in;
text-indent:-.25in;background:white;box-sizing: border-box;overflow-wrap: break-word;
font-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:
start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px'><span style='font-size:10.0pt;font-family:Symbol;color:#202124'> <span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-size:10.5pt;font-family:Roboto;color:#202124'>2.
Any Two Native Timeframes (with Liquid)</span></p>

<p style='margin-top:0in;margin-right:0in;margin-bottom:6.0pt;margin-left:.75in;
text-indent:-.25in;background:white;box-sizing: border-box;overflow-wrap: break-word;
font-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:
start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px'><span style='font-size:10.0pt;font-family:Symbol;color:#202124'> <span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-size:10.5pt;font-family:Roboto;color:#202124'>3.
Current Period and Previous Period</span></p>

<p style='margin-top:0in;margin-right:0in;margin-bottom:6.0pt;margin-left:.75in;
text-indent:-.25in;background:white;box-sizing: border-box;overflow-wrap: break-word;
font-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:
start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px'><span style='font-size:10.0pt;font-family:Symbol;color:#202124'> <span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-size:10.5pt;font-family:Roboto;color:#202124'>4.
Current Period and Many Previous Periods</span></p>

<p style='margin-top:0in;margin-right:0in;margin-bottom:6.0pt;margin-left:.75in;
text-indent:-.25in;background:white;box-sizing: border-box;overflow-wrap: break-word;
font-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:
start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px'><span style='font-size:10.0pt;font-family:Symbol;color:#202124'> <span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-size:10.5pt;font-family:Roboto;color:#202124'>5.
Current Period and Any Arbitrary Period</span></p>

<p style='margin-top:0in;margin-right:0in;margin-bottom:6.0pt;margin-left:.75in;
text-indent:-.25in;background:white;box-sizing: border-box;overflow-wrap: break-word;
font-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:
start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px'><span style='font-size:10.0pt;font-family:Symbol;color:#202124'> <span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-size:10.5pt;font-family:Roboto;color:#202124'>6.
Any Two Arbitrary Periods</span></p>

<p style='margin-top:0in;margin-right:0in;margin-bottom:6.0pt;margin-left:.75in;
text-indent:-.25in;background:white;box-sizing: border-box;overflow-wrap: break-word;
font-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:
start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px'><span style='font-size:10.0pt;font-family:Symbol;color:#202124'> <span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-size:10.5pt;font-family:Roboto;color:#202124'>7.
Arbitrary Period and Directly Previous Period</span></p>

<p style='margin-top:0in;margin-right:0in;margin-bottom:6.0pt;margin-left:.75in;
text-indent:-.25in;background:white;box-sizing: border-box;overflow-wrap: break-word;
font-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align:
start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: initial;
text-decoration-style: initial;text-decoration-color: initial;word-spacing:
0px'><span style='font-size:10.0pt;font-family:Symbol;color:#202124'> <span
style='font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-size:10.5pt;font-family:Roboto;color:#202124'>8.
Arbitrary Period and Many Previous Periods</span></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>&nbsp;</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='color:black'><img width=1294 height=716 id="Picture 2"
src="README_files/image001.png" alt="Table&#10;&#10;Description automatically generated"></span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var(--brand-font-family-brand)",serif;color:#2D7EEA'>Method
1</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>Yadda.</span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var(--brand-font-family-brand)",serif;color:#2D7EEA'>Method
1</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>Yadda.</span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var(--brand-font-family-brand)",serif;color:#2D7EEA'>Method
1</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>Yadda.</span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var(--brand-font-family-brand)",serif;color:#2D7EEA'>Method
1</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>Yadda.</span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var(--brand-font-family-brand)",serif;color:#2D7EEA'>Method
1</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>Yadda.</span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var(--brand-font-family-brand)",serif;color:#2D7EEA'>Method
1</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>Yadda.</span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var(--brand-font-family-brand)",serif;color:#2D7EEA'>Method
1</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:"inherit",serif;color:#3A4245'>Yadda.</span></p>

</div>

</body>

</html>
