<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tPadExt" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bPadExt" color="1" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="CustomParts">
<packages>
<package name="MODULE_ESP32-WROOM-32D">
<text x="-8.2833" y="13.8419" size="1.27341875" layer="25">&gt;NAME</text>
<text x="-8.966959375" y="-15.6155" size="1.2738" layer="27">&gt;VALUE</text>
<circle x="-10.777" y="5.238" radius="0.1" width="0.3" layer="21"/>
<wire x1="-9" y1="12.75" x2="9" y2="12.75" width="0.127" layer="51"/>
<wire x1="9" y1="12.75" x2="9" y2="-12.75" width="0.127" layer="51"/>
<wire x1="9" y1="-12.75" x2="-9" y2="-12.75" width="0.127" layer="51"/>
<wire x1="-9" y1="-12.75" x2="-9" y2="12.75" width="0.127" layer="51"/>
<rectangle x1="-2.58366875" y1="-3.824909375" x2="0.5811" y2="-0.6589" layer="31"/>
<wire x1="-8.96" y1="6.45" x2="8.96" y2="6.45" width="0.127" layer="51"/>
<text x="-5.72471875" y="8.65068125" size="1.78101875" layer="51">ANTENNA</text>
<wire x1="-9" y1="6" x2="-9" y2="12.75" width="0.127" layer="21"/>
<wire x1="-9" y1="12.75" x2="9" y2="12.75" width="0.127" layer="21"/>
<wire x1="9" y1="12.75" x2="9" y2="6" width="0.127" layer="21"/>
<wire x1="-9" y1="-12" x2="-9" y2="-12.75" width="0.127" layer="21"/>
<wire x1="-9" y1="-12.75" x2="-6.5" y2="-12.75" width="0.127" layer="21"/>
<wire x1="6.5" y1="-12.75" x2="9" y2="-12.75" width="0.127" layer="21"/>
<wire x1="9" y1="-12" x2="9" y2="-12.75" width="0.127" layer="21"/>
<wire x1="-8.96" y1="6.45" x2="8.96" y2="6.45" width="0.127" layer="21"/>
<wire x1="-9.25" y1="13" x2="9.25" y2="13" width="0.05" layer="39"/>
<wire x1="9.25" y1="13" x2="9.25" y2="6" width="0.05" layer="39"/>
<wire x1="9.25" y1="6" x2="9.75" y2="6" width="0.05" layer="39"/>
<wire x1="9.75" y1="6" x2="9.75" y2="-13.5" width="0.05" layer="39"/>
<wire x1="9.75" y1="-13.5" x2="-9.75" y2="-13.5" width="0.05" layer="39"/>
<wire x1="-9.75" y1="-13.5" x2="-9.75" y2="6" width="0.05" layer="39"/>
<wire x1="-9.75" y1="6" x2="-9.25" y2="6" width="0.05" layer="39"/>
<wire x1="-9.25" y1="6" x2="-9.25" y2="13" width="0.05" layer="39"/>
<circle x="-8.277" y="5.238" radius="0.1" width="0.3" layer="51"/>
<smd name="39" x="-1" y="-2.24" dx="5" dy="5" layer="1" cream="no"/>
<smd name="1" x="-8.5" y="5.26" dx="2" dy="0.9" layer="1"/>
<smd name="2" x="-8.5" y="3.99" dx="2" dy="0.9" layer="1"/>
<smd name="3" x="-8.5" y="2.72" dx="2" dy="0.9" layer="1"/>
<smd name="4" x="-8.5" y="1.45" dx="2" dy="0.9" layer="1"/>
<smd name="5" x="-8.5" y="0.18" dx="2" dy="0.9" layer="1"/>
<smd name="6" x="-8.5" y="-1.09" dx="2" dy="0.9" layer="1"/>
<smd name="7" x="-8.5" y="-2.36" dx="2" dy="0.9" layer="1"/>
<smd name="8" x="-8.5" y="-3.63" dx="2" dy="0.9" layer="1"/>
<smd name="9" x="-8.5" y="-4.9" dx="2" dy="0.9" layer="1"/>
<smd name="10" x="-8.5" y="-6.17" dx="2" dy="0.9" layer="1"/>
<smd name="11" x="-8.5" y="-7.44" dx="2" dy="0.9" layer="1"/>
<smd name="12" x="-8.5" y="-8.71" dx="2" dy="0.9" layer="1"/>
<smd name="13" x="-8.5" y="-9.98" dx="2" dy="0.9" layer="1"/>
<smd name="14" x="-8.5" y="-11.25" dx="2" dy="0.9" layer="1"/>
<smd name="15" x="-5.715" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="16" x="-4.445" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="17" x="-3.175" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="18" x="-1.905" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="19" x="-0.635" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="20" x="0.635" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="21" x="1.905" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="22" x="3.175" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="23" x="4.445" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="24" x="5.715" y="-12.25" dx="2" dy="0.9" layer="1" rot="R90"/>
<smd name="25" x="8.5" y="-11.25" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="26" x="8.5" y="-9.98" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="27" x="8.5" y="-8.71" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="28" x="8.5" y="-7.44" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="29" x="8.5" y="-6.17" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="30" x="8.5" y="-4.9" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="31" x="8.5" y="-3.63" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="32" x="8.5" y="-2.36" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="33" x="8.5" y="-1.09" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="34" x="8.5" y="0.18" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="35" x="8.5" y="1.45" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="36" x="8.5" y="2.72" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="37" x="8.5" y="3.99" dx="2" dy="0.9" layer="1" rot="R180"/>
<smd name="38" x="8.5" y="5.26" dx="2" dy="0.9" layer="1" rot="R180"/>
</package>
<package name="ESP32_MODULE_ADAPTOR">
<pad name="IO4" x="16.51" y="-6.35" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO0" x="13.97" y="-6.35" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO17" x="16.51" y="-3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO16" x="13.97" y="-3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO18" x="16.51" y="-1.27" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO5" x="13.97" y="-1.27" drill="1.016" shape="octagon" rot="R90"/>
<pad name="NC@7" x="16.51" y="1.27" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO19" x="13.97" y="1.27" drill="1.016" shape="octagon" rot="R90"/>
<pad name="RXD0" x="16.51" y="3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO21" x="13.97" y="3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO22" x="16.51" y="6.35" drill="1.016" shape="octagon" rot="R90"/>
<pad name="TXD0" x="13.97" y="6.35" drill="1.016" shape="octagon" rot="R90"/>
<pad name="GND@3" x="16.51" y="8.89" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO23" x="13.97" y="8.89" drill="1.016" shape="octagon" rot="R90"/>
<rectangle x1="16.256" y1="-6.604" x2="16.764" y2="-6.096" layer="51" rot="R90"/>
<rectangle x1="13.716" y1="-6.604" x2="14.224" y2="-6.096" layer="51" rot="R90"/>
<rectangle x1="13.716" y1="-4.064" x2="14.224" y2="-3.556" layer="51" rot="R90"/>
<rectangle x1="16.256" y1="-4.064" x2="16.764" y2="-3.556" layer="51" rot="R90"/>
<rectangle x1="13.716" y1="-1.524" x2="14.224" y2="-1.016" layer="51" rot="R90"/>
<rectangle x1="16.256" y1="-1.524" x2="16.764" y2="-1.016" layer="51" rot="R90"/>
<rectangle x1="13.716" y1="1.016" x2="14.224" y2="1.524" layer="51" rot="R90"/>
<rectangle x1="13.716" y1="3.556" x2="14.224" y2="4.064" layer="51" rot="R90"/>
<rectangle x1="13.716" y1="6.096" x2="14.224" y2="6.604" layer="51" rot="R90"/>
<rectangle x1="16.256" y1="1.016" x2="16.764" y2="1.524" layer="51" rot="R90"/>
<rectangle x1="16.256" y1="3.556" x2="16.764" y2="4.064" layer="51" rot="R90"/>
<rectangle x1="16.256" y1="6.096" x2="16.764" y2="6.604" layer="51" rot="R90"/>
<rectangle x1="13.716" y1="8.636" x2="14.224" y2="9.144" layer="51" rot="R90"/>
<rectangle x1="16.256" y1="8.636" x2="16.764" y2="9.144" layer="51" rot="R90"/>
<pad name="IO12" x="-13.97" y="-6.35" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO14" x="-16.51" y="-6.35" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO27" x="-13.97" y="-3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO26" x="-16.51" y="-3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO25" x="-13.97" y="-1.27" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO33" x="-16.51" y="-1.27" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO32" x="-13.97" y="1.27" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO35" x="-16.51" y="1.27" drill="1.016" shape="octagon" rot="R90"/>
<pad name="IO34" x="-13.97" y="3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="VN" x="-16.51" y="3.81" drill="1.016" shape="octagon" rot="R90"/>
<pad name="VP" x="-13.97" y="6.35" drill="1.016" shape="octagon" rot="R90"/>
<pad name="EN" x="-16.51" y="6.35" drill="1.016" shape="octagon" rot="R90"/>
<pad name="+3V3" x="-13.97" y="8.89" drill="1.016" shape="octagon" rot="R90"/>
<pad name="GND" x="-16.51" y="8.89" drill="1.016" shape="octagon" rot="R90"/>
<rectangle x1="-14.224" y1="-6.604" x2="-13.716" y2="-6.096" layer="51" rot="R90"/>
<rectangle x1="-16.764" y1="-6.604" x2="-16.256" y2="-6.096" layer="51" rot="R90"/>
<rectangle x1="-16.764" y1="-4.064" x2="-16.256" y2="-3.556" layer="51" rot="R90"/>
<rectangle x1="-14.224" y1="-4.064" x2="-13.716" y2="-3.556" layer="51" rot="R90"/>
<rectangle x1="-16.764" y1="-1.524" x2="-16.256" y2="-1.016" layer="51" rot="R90"/>
<rectangle x1="-14.224" y1="-1.524" x2="-13.716" y2="-1.016" layer="51" rot="R90"/>
<rectangle x1="-16.764" y1="1.016" x2="-16.256" y2="1.524" layer="51" rot="R90"/>
<rectangle x1="-16.764" y1="3.556" x2="-16.256" y2="4.064" layer="51" rot="R90"/>
<rectangle x1="-16.764" y1="6.096" x2="-16.256" y2="6.604" layer="51" rot="R90"/>
<rectangle x1="-14.224" y1="1.016" x2="-13.716" y2="1.524" layer="51" rot="R90"/>
<rectangle x1="-14.224" y1="3.556" x2="-13.716" y2="4.064" layer="51" rot="R90"/>
<rectangle x1="-14.224" y1="6.096" x2="-13.716" y2="6.604" layer="51" rot="R90"/>
<rectangle x1="-16.764" y1="8.636" x2="-16.256" y2="9.144" layer="51" rot="R90"/>
<rectangle x1="-14.224" y1="8.636" x2="-13.716" y2="9.144" layer="51" rot="R90"/>
<pad name="NC@29" x="-13.97" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="GND@1" x="-11.43" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="IO13" x="-8.89" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="SHD" x="-6.35" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="SWP" x="-3.81" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="SCS" x="-1.27" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="SCL" x="1.27" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="SDO" x="3.81" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="SDI" x="6.35" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="IO15" x="8.89" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="IO2" x="11.43" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<pad name="NC@40" x="13.97" y="-8.89" drill="1.016" shape="long" rot="R90"/>
<rectangle x1="11.176" y1="-9.144" x2="11.684" y2="-8.636" layer="51"/>
<rectangle x1="8.636" y1="-9.144" x2="9.144" y2="-8.636" layer="51"/>
<rectangle x1="6.096" y1="-9.144" x2="6.604" y2="-8.636" layer="51"/>
<rectangle x1="3.556" y1="-9.144" x2="4.064" y2="-8.636" layer="51"/>
<rectangle x1="1.016" y1="-9.144" x2="1.524" y2="-8.636" layer="51"/>
<rectangle x1="-1.524" y1="-9.144" x2="-1.016" y2="-8.636" layer="51"/>
<rectangle x1="-4.064" y1="-9.144" x2="-3.556" y2="-8.636" layer="51"/>
<rectangle x1="-6.604" y1="-9.144" x2="-6.096" y2="-8.636" layer="51"/>
<rectangle x1="-9.144" y1="-9.144" x2="-8.636" y2="-8.636" layer="51"/>
<rectangle x1="-11.684" y1="-9.144" x2="-11.176" y2="-8.636" layer="51"/>
<rectangle x1="-14.224" y1="-9.144" x2="-13.716" y2="-8.636" layer="51"/>
<rectangle x1="13.716" y1="-9.144" x2="14.224" y2="-8.636" layer="51"/>
<circle x="-11.43" y="8.89" radius="0.508" width="0.127" layer="51"/>
<text x="-11.43" y="6.35" size="0.6096" layer="25">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="ESP32-WROOM-32D">
<wire x1="-30.48" y1="35.56" x2="15.24" y2="35.56" width="0.254" layer="94"/>
<wire x1="15.24" y1="35.56" x2="15.24" y2="-7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="-30.48" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-30.48" y1="-7.62" x2="-30.48" y2="35.56" width="0.254" layer="94"/>
<text x="-15.0359" y="36.6745" size="1.783840625" layer="95">&gt;NAME</text>
<text x="0.4613" y="36.4679" size="1.78345" layer="96">&gt;VALUE</text>
<pin name="GND" x="-33.02" y="33.02" length="short" direction="pwr"/>
<pin name="3V3" x="-33.02" y="30.48" length="short" direction="pwr"/>
<pin name="EN" x="-33.02" y="27.94" length="short" direction="in"/>
<pin name="SENSOR_VP" x="-33.02" y="25.4" length="short" direction="in"/>
<pin name="SENSOR_VN" x="-33.02" y="22.86" length="short" direction="in"/>
<pin name="IO34" x="-33.02" y="20.32" length="short"/>
<pin name="IO35" x="-33.02" y="17.78" length="short"/>
<pin name="IO33" x="-33.02" y="12.7" length="short"/>
<pin name="IO32" x="-33.02" y="15.24" length="short"/>
<pin name="IO25" x="-33.02" y="10.16" length="short"/>
<pin name="IO26" x="-33.02" y="7.62" length="short"/>
<pin name="IO27" x="-33.02" y="5.08" length="short"/>
<pin name="IO14" x="-33.02" y="2.54" length="short"/>
<pin name="IO12" x="-33.02" y="0" length="short"/>
<pin name="IO13" x="-17.78" y="-10.16" length="short" rot="R90"/>
<pin name="IO15" x="0" y="-10.16" length="short" rot="R90"/>
<pin name="IO2" x="2.54" y="-10.16" length="short" rot="R90"/>
<pin name="IO0" x="17.78" y="0" length="short" rot="R180"/>
<pin name="IO4" x="17.78" y="2.54" length="short" rot="R180"/>
<pin name="IO16" x="17.78" y="5.08" length="short" rot="R180"/>
<pin name="IO17" x="17.78" y="7.62" length="short" rot="R180"/>
<pin name="IO5" x="17.78" y="10.16" length="short" rot="R180"/>
<pin name="IO18" x="17.78" y="12.7" length="short" rot="R180"/>
<pin name="IO19" x="17.78" y="15.24" length="short" rot="R180"/>
<pin name="IO21" x="17.78" y="20.32" length="short" rot="R180"/>
<pin name="IO22" x="17.78" y="27.94" length="short" rot="R180"/>
<pin name="IO23" x="17.78" y="30.48" length="short" rot="R180"/>
<pin name="RXD0" x="17.78" y="22.86" length="short" rot="R180"/>
<pin name="TXD0" x="17.78" y="25.4" length="short" rot="R180"/>
<pin name="SHD/SD2" x="-15.24" y="-10.16" length="short" rot="R90"/>
<pin name="SWP/SD3" x="-12.7" y="-10.16" length="short" rot="R90"/>
<pin name="SCS/CMD" x="-10.16" y="-10.16" length="short" rot="R90"/>
<pin name="SCL/CLK" x="-7.62" y="-10.16" length="short" function="clk" rot="R90"/>
<pin name="SDO/SD0" x="-5.08" y="-10.16" length="short" rot="R90"/>
<pin name="SDI/SD1" x="-2.54" y="-10.16" length="short" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-32D" prefix="U">
<description>IC: SoC; GPIO, I2C, I2S, IR, SD, SDIO, SPI, UART; 2.7÷3.6VDC; 20dBm</description>
<gates>
<gate name="G$1" symbol="ESP32-WROOM-32D" x="0" y="0"/>
</gates>
<devices>
<device name="MODULE" package="MODULE_ESP32-WROOM-32D">
<connects>
<connect gate="G$1" pin="3V3" pad="2"/>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="1 15 38 39"/>
<connect gate="G$1" pin="IO0" pad="25"/>
<connect gate="G$1" pin="IO12" pad="14"/>
<connect gate="G$1" pin="IO13" pad="16"/>
<connect gate="G$1" pin="IO14" pad="13"/>
<connect gate="G$1" pin="IO15" pad="23"/>
<connect gate="G$1" pin="IO16" pad="27"/>
<connect gate="G$1" pin="IO17" pad="28"/>
<connect gate="G$1" pin="IO18" pad="30"/>
<connect gate="G$1" pin="IO19" pad="31"/>
<connect gate="G$1" pin="IO2" pad="24"/>
<connect gate="G$1" pin="IO21" pad="33"/>
<connect gate="G$1" pin="IO22" pad="36"/>
<connect gate="G$1" pin="IO23" pad="37"/>
<connect gate="G$1" pin="IO25" pad="10"/>
<connect gate="G$1" pin="IO26" pad="11"/>
<connect gate="G$1" pin="IO27" pad="12"/>
<connect gate="G$1" pin="IO32" pad="8"/>
<connect gate="G$1" pin="IO33" pad="9"/>
<connect gate="G$1" pin="IO34" pad="6"/>
<connect gate="G$1" pin="IO35" pad="7"/>
<connect gate="G$1" pin="IO4" pad="26"/>
<connect gate="G$1" pin="IO5" pad="29"/>
<connect gate="G$1" pin="RXD0" pad="34"/>
<connect gate="G$1" pin="SCL/CLK" pad="20"/>
<connect gate="G$1" pin="SCS/CMD" pad="19"/>
<connect gate="G$1" pin="SDI/SD1" pad="22"/>
<connect gate="G$1" pin="SDO/SD0" pad="21"/>
<connect gate="G$1" pin="SENSOR_VN" pad="5"/>
<connect gate="G$1" pin="SENSOR_VP" pad="4"/>
<connect gate="G$1" pin="SHD/SD2" pad="17"/>
<connect gate="G$1" pin="SWP/SD3" pad="18"/>
<connect gate="G$1" pin="TXD0" pad="35"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Bluetooth, WiFi 802.11b/g/n, Bluetooth v4.2 + EDR, Class 1, 2 and 3 Transceiver Module 2.4GHz ~ 2.5GHz Integrated, Trace Surface Mount "/>
<attribute name="MF" value="Espressif Systems"/>
<attribute name="MP" value="ESP32-WROOM-32D"/>
<attribute name="PACKAGE" value="Module Espressif Systems"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
<device name="ADAPTOR" package="ESP32_MODULE_ADAPTOR">
<connects>
<connect gate="G$1" pin="3V3" pad="+3V3"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND" pad="GND GND@1 GND@3"/>
<connect gate="G$1" pin="IO0" pad="IO0"/>
<connect gate="G$1" pin="IO12" pad="IO12"/>
<connect gate="G$1" pin="IO13" pad="IO13"/>
<connect gate="G$1" pin="IO14" pad="IO14"/>
<connect gate="G$1" pin="IO15" pad="IO15"/>
<connect gate="G$1" pin="IO16" pad="IO16"/>
<connect gate="G$1" pin="IO17" pad="IO17"/>
<connect gate="G$1" pin="IO18" pad="IO18"/>
<connect gate="G$1" pin="IO19" pad="IO19"/>
<connect gate="G$1" pin="IO2" pad="IO2"/>
<connect gate="G$1" pin="IO21" pad="IO21"/>
<connect gate="G$1" pin="IO22" pad="IO22"/>
<connect gate="G$1" pin="IO23" pad="IO23"/>
<connect gate="G$1" pin="IO25" pad="IO25"/>
<connect gate="G$1" pin="IO26" pad="IO26"/>
<connect gate="G$1" pin="IO27" pad="IO27"/>
<connect gate="G$1" pin="IO32" pad="IO32"/>
<connect gate="G$1" pin="IO33" pad="IO33"/>
<connect gate="G$1" pin="IO34" pad="IO34"/>
<connect gate="G$1" pin="IO35" pad="IO35"/>
<connect gate="G$1" pin="IO4" pad="IO4"/>
<connect gate="G$1" pin="IO5" pad="IO5"/>
<connect gate="G$1" pin="RXD0" pad="RXD0"/>
<connect gate="G$1" pin="SCL/CLK" pad="SCL"/>
<connect gate="G$1" pin="SCS/CMD" pad="SCS"/>
<connect gate="G$1" pin="SDI/SD1" pad="SDI"/>
<connect gate="G$1" pin="SDO/SD0" pad="SDO"/>
<connect gate="G$1" pin="SENSOR_VN" pad="VN"/>
<connect gate="G$1" pin="SENSOR_VP" pad="VP"/>
<connect gate="G$1" pin="SHD/SD2" pad="SHD"/>
<connect gate="G$1" pin="SWP/SD3" pad="SWP"/>
<connect gate="G$1" pin="TXD0" pad="TXD0"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="CustomParts" deviceset="ESP32-32D" device="ADAPTOR"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="43.18" y="53.34" smashed="yes">
<attribute name="NAME" x="28.1441" y="90.0145" size="1.783840625" layer="95"/>
<attribute name="VALUE" x="43.6413" y="89.8079" size="1.78345" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
