<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5(7:0)" />
        <signal name="XLXN_6(3:0)" />
        <signal name="XLXN_7(7:0)" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="RST" />
        <signal name="XLXN_15" />
        <signal name="Clk" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="Clk" />
        <blockdef name="BlackBox">
            <timestamp>2020-4-16T12:6:28</timestamp>
            <rect width="352" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="I2C_Master">
            <timestamp>2020-4-15T18:7:0</timestamp>
            <rect width="336" x="64" y="-512" height="572" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="464" y1="-256" y2="-256" x1="400" />
            <line x2="464" y1="-192" y2="-192" x1="400" />
            <rect width="64" x="400" y="-140" height="24" />
            <line x2="464" y1="-128" y2="-128" x1="400" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="32" y2="32" x1="400" />
        </blockdef>
        <block symbolname="BlackBox" name="XLXI_1">
            <blockpin signalname="XLXN_12" name="FIFO_Empty" />
            <blockpin signalname="XLXN_11" name="FIFO_Full" />
            <blockpin signalname="XLXN_13" name="Busy" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="Clk" name="CLK" />
            <blockpin signalname="XLXN_10(7:0)" name="FIFO_DO(7:0)" />
            <blockpin signalname="XLXN_2" name="Go" />
            <blockpin signalname="XLXN_3" name="FIFO_Push_signal" />
            <blockpin signalname="XLXN_4" name="FIFO_Pop" />
            <blockpin signalname="XLXN_5(7:0)" name="Address(7:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="ReadCnt(3:0)" />
            <blockpin signalname="XLXN_7(7:0)" name="FIFO_DI(7:0)" />
        </block>
        <block symbolname="I2C_Master" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="Go" />
            <blockpin signalname="XLXN_5(7:0)" name="Address(7:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="ReadCnt(3:0)" />
            <blockpin name="SDA" />
            <blockpin name="SCL" />
            <blockpin signalname="XLXN_4" name="FIFO_Pop" />
            <blockpin signalname="XLXN_3" name="FIFO_Push" />
            <blockpin signalname="XLXN_7(7:0)" name="FIFO_DI(7:0)" />
            <blockpin signalname="XLXN_12" name="FIFO_Empty" />
            <blockpin signalname="XLXN_11" name="FIFO_Full" />
            <blockpin signalname="XLXN_10(7:0)" name="FIFO_DO(7:0)" />
            <blockpin signalname="RST" name="Reset" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_13" name="Busy" />
            <blockpin name="NACK" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1872" y="1136" name="XLXI_2" orien="R0">
        </instance>
        <instance x="976" y="1056" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1664" y1="704" y2="704" x1="1456" />
            <wire x2="1664" y1="656" y2="704" x1="1664" />
            <wire x2="1872" y1="656" y2="656" x1="1664" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1664" y1="768" y2="768" x1="1456" />
            <wire x2="1664" y1="768" y2="944" x1="1664" />
            <wire x2="1872" y1="944" y2="944" x1="1664" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1648" y1="832" y2="832" x1="1456" />
            <wire x2="1648" y1="832" y2="880" x1="1648" />
            <wire x2="1872" y1="880" y2="880" x1="1648" />
        </branch>
        <branch name="XLXN_5(7:0)">
            <wire x2="1632" y1="896" y2="896" x1="1456" />
            <wire x2="1632" y1="720" y2="896" x1="1632" />
            <wire x2="1872" y1="720" y2="720" x1="1632" />
        </branch>
        <branch name="XLXN_6(3:0)">
            <wire x2="1616" y1="960" y2="960" x1="1456" />
            <wire x2="1616" y1="784" y2="960" x1="1616" />
            <wire x2="1872" y1="784" y2="784" x1="1616" />
        </branch>
        <branch name="XLXN_7(7:0)">
            <wire x2="1664" y1="1024" y2="1024" x1="1456" />
            <wire x2="1664" y1="1008" y2="1024" x1="1664" />
            <wire x2="1872" y1="1008" y2="1008" x1="1664" />
        </branch>
        <branch name="XLXN_10(7:0)">
            <wire x2="976" y1="1024" y2="1024" x1="896" />
            <wire x2="896" y1="1024" y2="1280" x1="896" />
            <wire x2="2416" y1="1280" y2="1280" x1="896" />
            <wire x2="2416" y1="1008" y2="1008" x1="2336" />
            <wire x2="2416" y1="1008" y2="1280" x1="2416" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="896" y1="544" y2="768" x1="896" />
            <wire x2="976" y1="768" y2="768" x1="896" />
            <wire x2="2352" y1="544" y2="544" x1="896" />
            <wire x2="2352" y1="544" y2="944" x1="2352" />
            <wire x2="2352" y1="944" y2="944" x1="2336" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="976" y1="704" y2="704" x1="960" />
            <wire x2="960" y1="704" y2="1264" x1="960" />
            <wire x2="2432" y1="1264" y2="1264" x1="960" />
            <wire x2="2432" y1="880" y2="880" x1="2336" />
            <wire x2="2432" y1="880" y2="1264" x1="2432" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="976" y1="832" y2="832" x1="944" />
            <wire x2="944" y1="832" y2="1248" x1="944" />
            <wire x2="2400" y1="1248" y2="1248" x1="944" />
            <wire x2="2400" y1="1104" y2="1104" x1="2336" />
            <wire x2="2400" y1="1104" y2="1248" x1="2400" />
        </branch>
        <branch name="RST">
            <wire x2="688" y1="672" y2="896" x1="688" />
            <wire x2="976" y1="896" y2="896" x1="688" />
            <wire x2="688" y1="896" y2="1104" x1="688" />
            <wire x2="1872" y1="1104" y2="1104" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="672" name="RST" orien="R270" />
        <branch name="Clk">
            <wire x2="544" y1="672" y2="960" x1="544" />
            <wire x2="544" y1="960" y2="1168" x1="544" />
            <wire x2="1872" y1="1168" y2="1168" x1="544" />
            <wire x2="976" y1="960" y2="960" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="672" name="Clk" orien="R270" />
    </sheet>
</drawing>