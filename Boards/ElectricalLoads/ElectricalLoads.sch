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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="LM324N">
<packages>
<package name="DIP762W45P254L1969H508Q14">
<wire x1="-3.3" y1="9.85" x2="-3.3" y2="-9.85" width="0.127" layer="51"/>
<wire x1="-3.3" y1="-9.85" x2="3.3" y2="-9.85" width="0.127" layer="51"/>
<wire x1="3.3" y1="-9.85" x2="3.3" y2="9.85" width="0.127" layer="51"/>
<wire x1="3.3" y1="9.85" x2="-3.3" y2="9.85" width="0.127" layer="51"/>
<wire x1="-3.3" y1="-9.85" x2="3.3" y2="-9.85" width="0.127" layer="21"/>
<wire x1="3.3" y1="9.85" x2="-3.3" y2="9.85" width="0.127" layer="21"/>
<wire x1="-4.63" y1="10.1" x2="-4.63" y2="-10.1" width="0.05" layer="39"/>
<wire x1="-4.63" y1="-10.1" x2="4.63" y2="-10.1" width="0.05" layer="39"/>
<wire x1="4.63" y1="-10.1" x2="4.63" y2="10.1" width="0.05" layer="39"/>
<wire x1="4.63" y1="10.1" x2="-4.63" y2="10.1" width="0.05" layer="39"/>
<circle x="-5.6" y="7.6" radius="0.1" width="0.2" layer="21"/>
<circle x="-5.6" y="7.6" radius="0.1" width="0.2" layer="51"/>
<text x="-4.5" y="10.5" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.75" y="-10.5" size="1.778" layer="27" align="top-left">&gt;VALUE</text>
<wire x1="-3.3" y1="9.85" x2="-3.3" y2="8.51" width="0.127" layer="21"/>
<wire x1="3.3" y1="9.85" x2="3.3" y2="8.51" width="0.127" layer="21"/>
<wire x1="-3.3" y1="-8.51" x2="-3.3" y2="-9.85" width="0.127" layer="21"/>
<wire x1="3.3" y1="-8.51" x2="3.3" y2="-9.85" width="0.127" layer="21"/>
<pad name="1" x="-3.81" y="7.62" drill="0.74" diameter="1.14" shape="square"/>
<pad name="2" x="-3.81" y="5.08" drill="0.74" diameter="1.14"/>
<pad name="3" x="-3.81" y="2.54" drill="0.74" diameter="1.14"/>
<pad name="4" x="-3.81" y="0" drill="0.74" diameter="1.14"/>
<pad name="5" x="-3.81" y="-2.54" drill="0.74" diameter="1.14"/>
<pad name="6" x="-3.81" y="-5.08" drill="0.74" diameter="1.14"/>
<pad name="7" x="-3.81" y="-7.62" drill="0.74" diameter="1.14"/>
<pad name="8" x="3.81" y="-7.62" drill="0.74" diameter="1.14"/>
<pad name="9" x="3.81" y="-5.08" drill="0.74" diameter="1.14"/>
<pad name="10" x="3.81" y="-2.54" drill="0.74" diameter="1.14"/>
<pad name="11" x="3.81" y="0" drill="0.74" diameter="1.14"/>
<pad name="12" x="3.81" y="2.54" drill="0.74" diameter="1.14"/>
<pad name="13" x="3.81" y="5.08" drill="0.74" diameter="1.14"/>
<pad name="14" x="3.81" y="7.62" drill="0.74" diameter="1.14"/>
</package>
</packages>
<symbols>
<symbol name="LM324N">
<wire x1="2.54" y1="-7.62" x2="4.064" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="4.064" y1="-7.62" x2="6.096" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="6.096" y1="-7.62" x2="7.62" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="5.08" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="2.54" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="5.08" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-15.24" x2="10.16" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="6.096" y1="-7.62" x2="6.096" y2="-6.604" width="0.1524" layer="94"/>
<wire x1="6.096" y1="-6.604" x2="9.144" y2="-6.604" width="0.1524" layer="94"/>
<wire x1="9.144" y1="-6.604" x2="9.144" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="9.144" y1="-10.16" x2="10.16" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="4.064" y1="-7.62" x2="4.064" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="4.064" y1="-5.08" x2="10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-2.54" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-5.08" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-12.7" x2="-7.62" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="6.096" y1="-8.636" x2="6.096" y2="-8.128" width="0.1524" layer="94"/>
<wire x1="4.064" y1="-8.128" x2="4.064" y2="-8.636" width="0.1524" layer="94"/>
<wire x1="4.318" y1="-8.382" x2="3.81" y2="-8.382" width="0.1524" layer="94"/>
<wire x1="-6.096" y1="-8.509" x2="-6.096" y2="-8.001" width="0.1524" layer="94"/>
<wire x1="-4.2164" y1="-8.5344" x2="-4.2164" y2="-8.0264" width="0.1524" layer="94"/>
<wire x1="-3.9624" y1="-8.2804" x2="-4.4704" y2="-8.2804" width="0.1524" layer="94"/>
<wire x1="-5.0546" y1="-12.5984" x2="-5.0546" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="-5.0546" y1="-15.24" x2="-10.16" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="-4.2164" y1="-7.5692" x2="-4.2164" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-4.2164" y1="-5.08" x2="-10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-6.1468" y1="-7.5946" x2="-6.1468" y2="-6.3246" width="0.1524" layer="94"/>
<wire x1="-6.1468" y1="-6.3246" x2="-8.6106" y2="-6.3246" width="0.1524" layer="94"/>
<wire x1="-8.6106" y1="-6.3246" x2="-8.6106" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-8.6106" y1="-10.16" x2="-10.16" y2="-10.16" width="0.1524" layer="94"/>
<text x="-10.16" y="-19.05" size="1.778" layer="96" align="top-left">&gt;VALUE</text>
<wire x1="-2.54" y1="7.62" x2="-4.064" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-4.064" y1="7.62" x2="-6.096" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-6.096" y1="7.62" x2="-7.62" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-5.08" y2="12.7" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-2.54" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="15.24" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="15.24" x2="-10.16" y2="15.24" width="0.1524" layer="94"/>
<wire x1="-6.096" y1="7.62" x2="-6.096" y2="6.604" width="0.1524" layer="94"/>
<wire x1="-6.096" y1="6.604" x2="-9.144" y2="6.604" width="0.1524" layer="94"/>
<wire x1="-9.144" y1="6.604" x2="-9.144" y2="10.16" width="0.1524" layer="94"/>
<wire x1="-9.144" y1="10.16" x2="-10.16" y2="10.16" width="0.1524" layer="94"/>
<wire x1="-4.064" y1="7.62" x2="-4.064" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-4.064" y1="5.08" x2="-10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="7.62" x2="2.54" y2="7.62" width="0.1524" layer="94"/>
<wire x1="2.54" y1="7.62" x2="5.08" y2="12.7" width="0.1524" layer="94"/>
<wire x1="5.08" y1="12.7" x2="7.62" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-6.096" y1="8.636" x2="-6.096" y2="8.128" width="0.1524" layer="94"/>
<wire x1="-4.064" y1="8.128" x2="-4.064" y2="8.636" width="0.1524" layer="94"/>
<wire x1="-4.318" y1="8.382" x2="-3.81" y2="8.382" width="0.1524" layer="94"/>
<wire x1="6.096" y1="8.509" x2="6.096" y2="8.001" width="0.1524" layer="94"/>
<wire x1="4.2164" y1="8.5344" x2="4.2164" y2="8.0264" width="0.1524" layer="94"/>
<wire x1="3.9624" y1="8.2804" x2="4.4704" y2="8.2804" width="0.1524" layer="94"/>
<wire x1="5.0546" y1="12.5984" x2="5.0546" y2="15.24" width="0.1524" layer="94"/>
<wire x1="5.0546" y1="15.24" x2="10.16" y2="15.24" width="0.1524" layer="94"/>
<wire x1="4.2164" y1="7.5692" x2="4.2164" y2="5.08" width="0.1524" layer="94"/>
<wire x1="4.2164" y1="5.08" x2="10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="6.1468" y1="7.5946" x2="6.1468" y2="6.3246" width="0.1524" layer="94"/>
<wire x1="10.16" y1="15.24" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="6.1468" y1="6.3246" x2="8.6106" y2="6.3246" width="0.1524" layer="94"/>
<wire x1="8.6106" y1="6.3246" x2="8.6106" y2="10.16" width="0.1524" layer="94"/>
<wire x1="8.6106" y1="10.16" x2="10.16" y2="10.16" width="0.1524" layer="94"/>
<text x="-10.16" y="19.05" size="1.778" layer="95">&gt;NAME</text>
<wire x1="10.16" y1="15.24" x2="10.16" y2="17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="17.78" x2="-10.16" y2="17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-17.78" x2="10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<text x="-5.334" y="9.652" size="0.762" layer="97">1</text>
<text x="-5.334" y="-9.906" size="0.762" layer="97">2</text>
<text x="4.826" y="-10.16" size="0.762" layer="97">3</text>
<text x="4.826" y="9.398" size="0.762" layer="97">4</text>
<pin name="3OUT" x="12.7" y="-15.24" visible="off" length="short" direction="out" rot="R180"/>
<pin name="3IN-" x="12.7" y="-10.16" visible="off" length="short" direction="in" rot="R180"/>
<pin name="3IN+" x="12.7" y="-5.08" visible="off" length="short" direction="in" rot="R180"/>
<pin name="GND" x="12.7" y="0" visible="off" length="short" direction="pwr" rot="R180"/>
<pin name="2IN+" x="-12.7" y="-5.08" visible="pad" length="short" direction="in"/>
<pin name="2IN-" x="-12.7" y="-10.16" visible="pad" length="short" direction="in"/>
<pin name="2OUT" x="-12.7" y="-15.24" visible="pad" length="short" direction="out"/>
<pin name="1OUT" x="-12.7" y="15.24" visible="pad" length="short" direction="out"/>
<pin name="1IN-" x="-12.7" y="10.16" visible="pad" length="short" direction="in"/>
<pin name="1IN+" x="-12.7" y="5.08" visible="pad" length="short" direction="in"/>
<pin name="VCC" x="-12.7" y="0" visible="pad" length="short" direction="pwr"/>
<pin name="4IN+" x="12.7" y="5.08" visible="off" length="short" direction="in" rot="R180"/>
<pin name="4IN-" x="12.7" y="10.16" visible="off" length="short" direction="in" rot="R180"/>
<pin name="4OUT" x="12.7" y="15.24" visible="off" length="short" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LM324N" prefix="U">
<description>OP Amp Quad GP ±15V/30V 14-Pin PDIP Tube</description>
<gates>
<gate name="G$1" symbol="LM324N" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP762W45P254L1969H508Q14">
<connects>
<connect gate="G$1" pin="1IN+" pad="3"/>
<connect gate="G$1" pin="1IN-" pad="2"/>
<connect gate="G$1" pin="1OUT" pad="1"/>
<connect gate="G$1" pin="2IN+" pad="5"/>
<connect gate="G$1" pin="2IN-" pad="6"/>
<connect gate="G$1" pin="2OUT" pad="7"/>
<connect gate="G$1" pin="3IN+" pad="10"/>
<connect gate="G$1" pin="3IN-" pad="9"/>
<connect gate="G$1" pin="3OUT" pad="8"/>
<connect gate="G$1" pin="4IN+" pad="12"/>
<connect gate="G$1" pin="4IN-" pad="13"/>
<connect gate="G$1" pin="4OUT" pad="14"/>
<connect gate="G$1" pin="GND" pad="11"/>
<connect gate="G$1" pin="VCC" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" OP Amp Quad GP ±15V/30V 14-Pin PDIP Tube "/>
<attribute name="MF" value="Texas Instruments"/>
<attribute name="MP" value="LM324N"/>
<attribute name="PACKAGE" value="DIP-14 STMicroelectronics"/>
<attribute name="PRICE" value="None"/>
</technology>
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
<part name="U1" library="LM324N" deviceset="LM324N" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="68.58" y="50.8" smashed="yes">
<attribute name="VALUE" x="58.42" y="31.75" size="1.778" layer="96" align="top-left"/>
<attribute name="NAME" x="58.42" y="69.85" size="1.778" layer="95"/>
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
