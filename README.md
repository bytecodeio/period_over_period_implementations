
<div class=WordSection1>

<p class=MsoNormal style='margin-bottom:.1in;line-height:normal;background:
white'><b><span style='font-size:23.5pt;font-family:"var\(--brand-font-family-brand\)";
color:#2D7EEA'>README   Period-Over-Period Implementations</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:inherit;color:#3A4245'>The  <span
class=SpellE>period_over_period</span>  project implements popular Looker
period-over-period methods.<span style='mso-spacerun:yes'>  </span>The
functionality can be replicated by copying <span class=SpellE>LookML</span>
code from the views specified for each method into views in the target
project.<span style='mso-spacerun:yes'>  </span>Once copied, these views can be
customized for dimensions and measures present there and intended for period
over period reporting.<span style='mso-spacerun:yes'>  </span>The <span
class=SpellE>LookML</span> code can be added to existing views or left in
stand-alone views and be optionally joined with existing explores.<o:p></o:p></span></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:inherit;color:#3A4245'>The
instructions in the  Implementation  sections below will utilize stand-alone
views copied directly from the  method  views.</span><o:p></o:p></p>

<p class=MsoNormal style='margin-bottom:.1in;line-height:normal;background:
white'><o:p>&nbsp;</o:p></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var\(--brand-font-family-brand\)";color:#2D7EEA'>Available Methods</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span style='font-size:10.5pt;font-family:inherit;color:#3A4245'>The following
methods have been implemented in this project for easy lift and drop into other
projects. Selections can be made according to required period comparison and
complexity preference.&nbsp; Instructions for implementing each are detailed below.</span></p>

<p class=MsoNormal style='margin-bottom:13.2pt;text-indent:.5in;line-height:
normal;background:white'><span style='font-size:10.5pt;font-family:inherit;
color:#3A4245'>&nbsp;</span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var\(--brand-font-family-brand\)";color:#2D7EEA'>Method 1 -
Any Two Native Timeframes</span></b></p>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Advantage:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l9 level1 lfo1;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Users
     can self-serve <span class=SpellE>PoP</span> analyses in <span
     class=GramE>an Explore</span>. Developing additional fields (unless you
     create a&nbsp;<span class=SpellE>yesno</span>&nbsp;<span class=SpellE>LookML</span>
     field on which to filter, as in the examples above) or&nbsp;<a
     href="https://docs.looker.com/reference/liquid-variables" target="_blank">Liquid</a>&nbsp;implementation
     is not required.<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Disadvantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l8 level1 lfo2;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>The
     type of comparison (e.g., year-over-year, month-over-month) cannot be
     changed without choosing different fields in <span class=GramE>an Explore</span>.<o:p></o:p></span></li>
 <ul type=circle>
  <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
      auto;line-height:normal;mso-list:l8 level2 lfo2;tab-stops:list 1.0in;
      background:white'><span style='font-size:10.5pt;font-family:Roboto;
      mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>This
      can be time-consuming and potentially confusing for users to do
      themselves in <span class=GramE>an Explore</span> and is impossible for
      users without&nbsp;explore&nbsp;permissions.<o:p></o:p></span></li>
  <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
      auto;line-height:normal;mso-list:l8 level2 lfo2;tab-stops:list 1.0in;
      background:white'><b><span style='font-size:10.5pt;font-family:Roboto;
      mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Importantly</span></b><span
      style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
      mso-bidi-font-family:"Times New Roman"'>, this means it is impossible to
      control the <span class=SpellE>PoP</span> analysis using&nbsp;<a
      href="https://docs.looker.com/dashboards/adding-filters-to-user-dashboards"
      target="_blank">dashboard filters</a>, as they can only be applied to a
      single field.<o:p></o:p></span></li>
 </ul>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l8 level1 lfo2;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>This
     method does not easily support&nbsp;<a
     href="https://docs.looker.com/reference/field-params/filters"
     target="_blank">filtered measures</a>. For example, logic such as &quot;%
     change vs previous period&quot; must be achieved with a&nbsp;<a
     href="https://docs.looker.com/exploring-data/using-table-calculations"
     target="_blank">table calculation</a>, rather than with a <o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Quick Implementation:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ol start=1 type=1>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l2 level1 lfo14;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Basic
     Method 1 functionality is available in standard Looker by pivoting on <span
     class=GramE>time period</span>.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l2 level1 lfo14;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>The
      method1.view  contains additional filters and a parameter to limit
     results to the current date position in the focus period.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l2 level1 lfo14;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method1.view file in your target project and paste in the method1 <span
     class=SpellE>LookML</span> code.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l2 level1 lfo14;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Update
     the  include:  and  extends:  statements to appropriate values in your
     target project.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l2 level1 lfo14;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>In
     the <span class=GramE>dimension</span> and measures, update the  SQL:  statements
     and names fitting your project.<o:p></o:p></span></li>
</ol>


<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Sample Dashboard: <a href="https://looker.bytecode.io/dashboards/period_over_period::method_1_use_lookers_native_date_dimension_groups?Created+Year=2+years&Display+only+Year+to+Date=YTD&Created+Month=2+month&Display+only+Month+to+Date=No"><u>Method 1</u></a></span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in;line-height:normal;background:white'><span style='font-size:
10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:
"Times New Roman";color:#202124'><o:p>&nbsp;</o:p></span></p>

<h1 style='margin:0in;background:white'><span style='font-size:19.0pt;
font-family:"var\(--brand-font-family-brand\)";color:#2D7EEA;font-weight:normal'>Method
2 - Any Two Native Timeframes (with Liquid)<o:p></o:p></span></h1>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Advantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l1 level1 lfo3;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Minimal
     modeling is required.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l1 level1 lfo3;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>View-only
     users can manipulate the analysis on a dashboard.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l1 level1 lfo3;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>The
     user experience is simplified and only requires changing filter values,
     rather than changing Explore fields.<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Disadvantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l6 level1 lfo4;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'><a
     href="https://docs.looker.com/reference/field-params/filters">Filtered
     measures</a>&nbsp;are incompatible with this method.<o:p></o:p></span></li>
</ul>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l8 level1 lfo2;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Custom
     time periods (anything that is not a&nbsp;<span class=SpellE>dimension_group</span>&nbsp;<a
     href="https://docs.looker.com/reference/field-params/dimension_group#timeframe_options"><span
     style='color:#202124;text-decoration:none;text-underline:none'>timeframe</span></a>)
     are not supported.<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Quick Implementation:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ol start=1 type=1>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l4 level1 lfo13;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method1.view file in your target project and paste in the method1 <span
     class=SpellE>LookML</span> code if you have not already.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l4 level1 lfo13;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>In
     the <span class=GramE>dimension</span> and measures in the method1 file, update
     the  SQL:  statements and names fitting your project.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l4 level1 lfo13;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method2.view file in your target project and paste in the method2 <span
     class=SpellE>LookML</span> code.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l4 level1 lfo13;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Update
     the  include:  and  extends:  statements in the method2 view to reflect
     location of method1 code if you have renamed or copied into another view.<o:p></o:p></span></li>
</ol>


<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Sample Dashboard: <a href="https://looker.bytecode.io/dashboards/eaRH1fBQsqqyDSrR1sKQMe?Choose+Comparison+%28Pivot%29=Month&Choose+Grouping+%28Rows%29=DOM&Created+Year=2+months&Display+only+Period+to+Date=No"><u>Method 2</u></a></span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in;line-height:normal;background:white'><span style='font-size:
10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:
"Times New Roman";color:#202124'><o:p>&nbsp;</o:p></span></p>



<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var\(--brand-font-family-brand\)";color:#2D7EEA'>Method 3 -
Current Period and Previous Period</span></b></p>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Advantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l15 level1 lfo5;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Performs
     the same function as&nbsp;<b>Method 2: Allow Users to Choose Periods with
     Parameters</b>.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l15 level1 lfo5;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Supports&nbsp;<a
     href="https://docs.looker.com/reference/field-params/filters">filtered
     measures</a>.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l15 level1 lfo5;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Provides
     granular control of period definition without requiring too many fields,
     which may confuse the user.<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Disadvantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l3 level1 lfo6;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Requires
     complex <span class=SpellE>LookML</span> modeling, including&nbsp;<a
     href="https://docs.looker.com/reference/liquid-variables">Liquid</a>&nbsp;implementation.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l3 level1 lfo6;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Overlapping
     periods are not supported (this requires a join).<o:p></o:p></span></li>
</ul>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l8 level1 lfo2;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Only
     a single date field may be used (e.g., the same functionality for other
     date fields requires replicating all the code, per date field).<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Quick Implementation:<o:p></o:p></span></b></p>








<ol start=1 type=1>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l13 level1 lfo15;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method1.view file in your target project and paste in the method1 <span
     class=SpellE>LookML</span> code if you have not already.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l13 level1 lfo15;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>In
     the <span class=GramE>dimension</span> and measures in the method1 file, update
     the  SQL:  statements and names fitting your project.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l13 level1 lfo15;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method3.view file in your target project and paste in the method3 <span
     class=SpellE>LookML</span> code.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l13 level1 lfo15;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Update
     the  include:  and  extends:  statements in the method3 view to reflect
     location of method1 code if you have renamed or copied into another view.<o:p></o:p></span></li>
</ol>
<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Sample Dashboard: <a href="https://looker.bytecode.io/dashboards/period_over_period::method_3_custom_choice_of_current_and_previous_periods_with_parameters?Current%20Date%20Range=1%20months&Compare%20To:=Period"><u>Method 3</u></a></span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in;line-height:normal;background:white'><span style='font-size:
10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:
"Times New Roman";color:#202124'><o:p>&nbsp;</o:p></span></p>
<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var\(--brand-font-family-brand\)";color:#2D7EEA'>Method 4 -
Current Period and Many Previous Periods</span></b></p>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Advantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l10 level1 lfo7;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Performs
     the same function as&nbsp;<b>Method 3: Custom Choice of Current and
     Previous Periods with Parameters</b>.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l10 level1 lfo7;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Can
     accommodate more than two period comparisons in a <span class=SpellE>PoP</span>
     analysis.<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Disadvantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l5 level1 lfo8;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Requires
     complex <span class=SpellE>LookML</span> modeling, including&nbsp;<a
     href="https://docs.looker.com/reference/liquid-variables">Liquid</a>&nbsp;implementation.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l5 level1 lfo8;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>The
     developer must decide how many periods to create parameter values for,
     which can potentially limit user analysis.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l5 level1 lfo8;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Overlapping
     periods are not supported (this requires a join).<o:p></o:p></span></li>
</ul>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l8 level1 lfo2;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Only
     a single date field may be used (e.g., the same functionality for other
     dates requires replicating all the code, per date).<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Quick Implementation:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ol start=1 type=1>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l11 level1 lfo16;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method1.view file in your target project and paste in the method1 <span
     class=SpellE>LookML</span> code if you have not already.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l11 level1 lfo16;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>In
     the <span class=GramE>dimension</span> and measures in the method1 file, update
     the  SQL:  statements and names fitting your project.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l11 level1 lfo16;tab-stops:list .5in;
     background:white'><a name="_Hlk121147200"><span style='font-size:10.5pt;
     font-family:Roboto;mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:
     "Times New Roman"'>Create a method3.view file in your target project and
     paste in the method3 </span></a><span class=SpellE><span style='mso-bookmark:
     _Hlk121147200'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>LookML</span></span></span><span
     style='mso-bookmark:_Hlk121147200'><span style='font-size:10.5pt;
     font-family:Roboto;mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:
     "Times New Roman"'> code if you have not already.<o:p></o:p></span></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l11 level1 lfo16;tab-stops:list .5in;
     background:white'><span style='mso-bookmark:_Hlk121147200'><span
     style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
     mso-bidi-font-family:"Times New Roman"'>Update the  include:  and  extends:
     statements in the method3 view to reflect location of method1 code if you
     have renamed or copied into another view.<o:p></o:p></span></span></li>
 <span style='mso-bookmark:_Hlk121147200'></span>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l11 level1 lfo16;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method4.view file in your target project and paste in the method4 <span
     class=SpellE>LookML</span> code if you have not already.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l11 level1 lfo16;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Update
     the  include:  and  extends:  statements in the method4 view to reflect
     location of method3 code if you have renamed or copied into another view.<o:p></o:p></span></li>
</ol>
<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Sample Dashboard: <a href="https://looker.bytecode.io/dashboards/period_over_period::method_4_compare_multiple_templated_periods?Current%20Date%20Range=6%20months&Number%20of%20Periods=4&Compare%20To:=Year"><u>Method 4</u></a></span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in;line-height:normal;background:white'><span style='font-size:
10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:
"Times New Roman";color:#202124'><o:p>&nbsp;</o:p></span></p>
<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var\(--brand-font-family-brand\)";color:#2D7EEA'>Method 5 -
Current Period and Any Arbitrary Period</span></b></p>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Advantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l7 level1 lfo9;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Performs
     the same function as&nbsp;<b>Method 3: Custom Choice of Current and Previous
     Periods with Parameters</b>.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l7 level1 lfo9;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>A
     custom date range can be compared against the current period chosen   two
     arbitrary date ranges can be plotted side by side.<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Disadvantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l0 level1 lfo10;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Requires
     complex <span class=SpellE>LookML</span> modeling, including&nbsp;<a
     href="https://docs.looker.com/reference/liquid-variables" target="_blank">Liquid</a>&nbsp;implementation.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l0 level1 lfo10;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>The
     developer must decide how many custom periods to allow, which can
     potentially limit user analysis. The <span class=SpellE>LookML</span>
     example below only allows for one custom date range to compare against the
     current period.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l0 level1 lfo10;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Overlapping
     periods are not supported (this requires a join).<o:p></o:p></span></li>
</ul>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l8 level1 lfo2;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Only
     a single date field may be used (e.g., the same functionality for other
     dates requires replicating all the code, per date).<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Quick Implementation:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>



 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l12 level1 lfo17;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method1.view file in your target project and paste in the method1 <span
     class=SpellE>LookML</span> code if you have not already.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l12 level1 lfo17;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>In
     the <span class=GramE>dimension</span> and measures in the method1 file, update
     the  SQL:  statements and names fitting your project.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l12 level1 lfo17;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method3.view file in your target project and paste in the method3 <span
     class=SpellE>LookML</span> code if you have not already.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l12 level1 lfo17;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Update
     the  include:  and  extends:  statements in the method3 view to reflect
     location of method1 code if you have renamed or copied into another view.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l12 level1 lfo17;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method5.view file in your target project and paste in the method5 <span
     class=SpellE>LookML</span> code if you have not already.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l12 level1 lfo17;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Update
     the  include:  and  extends:  statements in the method5 view to reflect
     location of method3 code if you have renamed or copied into another view.<o:p></o:p></span></li>


<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Sample Dashboard: <a href="https://looker.bytecode.io/dashboards/period_over_period::method_5_compare_current_period_with_another_arbitrary_period?Current%20Date%20Range=2%20months&Previous%20Date%20Range%20(Custom):=3%20months%20ago%20for%201%20days"><u>Method 5</u></a></span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>



<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in;line-height:normal;background:white'><span style='font-size:
10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:
"Times New Roman";color:#202124'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var\(--brand-font-family-brand\)";color:#2D7EEA'>Method 6 -
Any Two Arbitrary Periods</span></b></p>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Advantage:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l14 level1 lfo11;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>This
     type of analysis is familiar to Google Analytics users and is a great
     choice to use for a similar use case.<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Disadvantages:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l16 level1 lfo12;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Both
     comparison date ranges must be set manually, which may seem slower and
     more complex to users who expect a simpler <span class=SpellE>PoP</span>
     analysis.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l16 level1 lfo12;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>There
     are other additional nuances that may potentially frustrate users:<o:p></o:p></span></li>
 <ul type=circle>
  <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
      auto;line-height:normal;mso-list:l16 level2 lfo12;tab-stops:list 1.0in;
      background:white'><span style='font-size:10.5pt;font-family:Roboto;
      mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>The
      first period must occur before the second period.<o:p></o:p></span></li>
  <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
      auto;line-height:normal;mso-list:l16 level2 lfo12;tab-stops:list 1.0in;
      background:white'><span style='font-size:10.5pt;font-family:Roboto;
      mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>An
      additional filter is required to ensure that the&nbsp;'First Period'&nbsp;and&nbsp;'Second
      Period'&nbsp;labels are not null.<o:p></o:p></span></li>
 </ul>
</ul>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l8 level1 lfo2;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Overlapping
     periods are not supported (this requires a join).<o:p></o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Quick Implementation:</span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<ul type=disc>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l16 level1 lfo12;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method1.view file in your target project and paste in the method1 <span
     class=SpellE>LookML</span> code if you have not already.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l16 level1 lfo12;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>In
     the <span class=GramE>dimension</span> and measures in the method1 file, update
     the  SQL:  statements and names fitting your project.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l16 level1 lfo12;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Create
     a method6.view file in your target project and paste in the method6 <span
     class=SpellE>LookML</span> code.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l16 level1 lfo12;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'>Update
     the  include:  and  extends:  statements in the method6 view to reflect
     location of method1 code if you have renamed or copied into another view.<o:p></o:p></span></li>
 <li class=MsoNormal style='color:#202124;mso-margin-top-alt:auto;mso-margin-bottom-alt:
     auto;line-height:normal;mso-list:l16 level1 lfo12;tab-stops:list .5in;
     background:white'><span style='font-size:10.5pt;font-family:Roboto;
     mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman"'><o:p>&nbsp;</o:p></span></li>
</ul>

<p class=MsoNormal style='margin-bottom:6.0pt;line-height:normal;background:
white'><b><span style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";color:#202124'>Sample Dashboard: <a href="https://looker.bytecode.io/dashboards/period_over_period::method_6_compare_two_arbitrary_date_ranges?First%20Period%20Filter=2022%2F05%2F01%20to%202022%2F06%2F01&Second%20Period%20Filter=2022%2F06%2F01%20to%202022%2F07%2F01&First%20or%20second%20period=-NULL"><u>Method 6</u></a></span></b><span
style='font-size:10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";color:#202124'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;
margin-left:.5in;line-height:normal;background:white'><span style='font-size:
10.5pt;font-family:Roboto;mso-fareast-font-family:"Times New Roman";mso-bidi-font-family:
"Times New Roman";color:#202124'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-top:.1in;margin-right:0in;margin-bottom:.1in;
margin-left:0in;line-height:normal;background:white'><b><span style='font-size:
19.0pt;font-family:"var\(--brand-font-family-brand\)";color:#2D7EEA'>Citations</span></b></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><span class=SpellE><span style='font-size:10.5pt;font-family:inherit;
color:#3A4245'>LookML</span></span><span style='font-size:10.5pt;font-family:
inherit;color:#3A4245'> code in this project has been developed using base code
from: </span><o:p></o:p></p>

<p class=MsoNormal style='margin-bottom:13.2pt;text-indent:.5in;line-height:
normal;background:white'><span style='font-size:10.5pt;font-family:inherit;
color:#3A4245'>-Molly <span class=SpellE>Lippsett</span> 2022, Methods for
Period Over Period (<span class=SpellE>PoP</span>) Analysis in Looker,[<span
class=SpellE>LookML</span> Example],<a
href="https://community.looker.com/technical-tips-tricks-1021/methods-for-period-over-period-pop-analysis-in-looker-30823">https://community.looker.com/technical-tips-tricks-1021/methods-for-period-over-period-pop-analysis-in-looker-30823</a></span><o:p></o:p></p>

<p class=MsoNormal style='margin-bottom:13.2pt;text-indent:.5in;line-height:
normal;background:white'><span style='font-size:10.5pt;font-family:inherit;
color:#3A4245'>&nbsp;-<span class=SpellE>Llooker</span> 2022, <span
class=SpellE>Lookml</span> period over period analysis in different dialects,
[views],<a href="https://github.com/llooker/period_over_period_analysis">https://github.com/llooker/period_over_period_analysis</a></span><o:p></o:p></p>

<p class=MsoNormal style='margin-bottom:13.2pt;line-height:normal;background:
white'><o:p>&nbsp;</o:p></p>

</div>
