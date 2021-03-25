<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>Detecteur</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>clock</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>Detecteur.clock.m_if.Val</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>reset</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>Detecteur.reset.m_if.Val</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>1</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>e</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>Detecteur.e.m_if.Val.V</originalName>
              <rtlName/>
              <coreName>FIFO_SRL</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_4">
          <Value>
            <Obj>
              <type>1</type>
              <id>4</id>
              <name>s</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>Detecteur.s.m_if.Val.V</originalName>
              <rtlName/>
              <coreName>FIFO_SRL</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>58</id>
              <name>_ln31</name>
              <fileName>systemc/src/Seuil_calc.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>31</lineNumber>
              <contextFuncName>Seuil_calc</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>2</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>systemc/src/Detecteur.hpp</first>
                        <second>Detecteur</second>
                      </first>
                      <second>33</second>
                    </item>
                    <item>
                      <first>
                        <first>systemc/src/Seuil_calc.hpp</first>
                        <second>Seuil_calc</second>
                      </first>
                      <second>31</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>grp_Seuil_calc_fu_100</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>91</item>
            <item>92</item>
            <item>93</item>
            <item>94</item>
            <item>95</item>
            <item>110</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>59</id>
              <name>_ln32</name>
              <fileName>systemc/src/trames_separ.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>32</lineNumber>
              <contextFuncName>trames_separ</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>systemc/src/Detecteur.hpp</first>
                        <second>Detecteur</second>
                      </first>
                      <second>33</second>
                    </item>
                    <item>
                      <first>
                        <first>systemc/src/trames_separ.hpp</first>
                        <second>trames_separ</second>
                      </first>
                      <second>32</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>grp_trames_separ_fu_114</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>7</count>
            <item_version>0</item_version>
            <item>97</item>
            <item>98</item>
            <item>99</item>
            <item>100</item>
            <item>101</item>
            <item>102</item>
            <item>111</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>60</id>
              <name>_ln29</name>
              <fileName>systemc/src/Doubleur_uint.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>29</lineNumber>
              <contextFuncName>DOUBLEUR_U</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</first>
                  <second>
                    <count>2</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>systemc/src/Detecteur.hpp</first>
                        <second>Detecteur</second>
                      </first>
                      <second>33</second>
                    </item>
                    <item>
                      <first>
                        <first>systemc/src/Doubleur_uint.hpp</first>
                        <second>DOUBLEUR_U</second>
                      </first>
                      <second>29</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>grp_DOUBLEUR_U_fu_130</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>7</count>
            <item_version>0</item_version>
            <item>104</item>
            <item>105</item>
            <item>106</item>
            <item>107</item>
            <item>108</item>
            <item>109</item>
            <item>112</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>88</id>
              <name>_ln55</name>
              <fileName>systemc/src/Detecteur.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>55</lineNumber>
              <contextFuncName>Detecteur</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>/home/oasa/Documents/ef/adsb-like-comm-toolbox/src</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>systemc/src/Detecteur.hpp</first>
                        <second>Detecteur</second>
                      </first>
                      <second>55</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>4</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_9">
          <Value>
            <Obj>
              <type>2</type>
              <id>90</id>
              <name>Seuil_calc</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:Seuil_calc::Seuil_calc.1&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_10">
          <Value>
            <Obj>
              <type>2</type>
              <id>96</id>
              <name>trames_separ</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:trames_separ::trames_separ.1&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_11">
          <Value>
            <Obj>
              <type>2</type>
              <id>103</id>
              <name>DOUBLEUR_U</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:DOUBLEUR_U::DOUBLEUR_U.1&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_12">
          <Obj>
            <type>3</type>
            <id>89</id>
            <name>Detecteur::Detecteur.1</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>4</count>
            <item_version>0</item_version>
            <item>58</item>
            <item>59</item>
            <item>60</item>
            <item>88</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>20</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_13">
          <id>91</id>
          <edge_type>1</edge_type>
          <source_obj>90</source_obj>
          <sink_obj>58</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_14">
          <id>92</id>
          <edge_type>1</edge_type>
          <source_obj>5</source_obj>
          <sink_obj>58</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_15">
          <id>93</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>58</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_16">
          <id>94</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>58</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_17">
          <id>95</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>58</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_18">
          <id>97</id>
          <edge_type>1</edge_type>
          <source_obj>96</source_obj>
          <sink_obj>59</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>98</id>
          <edge_type>1</edge_type>
          <source_obj>9</source_obj>
          <sink_obj>59</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>99</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>59</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>100</id>
          <edge_type>1</edge_type>
          <source_obj>11</source_obj>
          <sink_obj>59</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>101</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>59</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>102</id>
          <edge_type>1</edge_type>
          <source_obj>13</source_obj>
          <sink_obj>59</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>104</id>
          <edge_type>1</edge_type>
          <source_obj>103</source_obj>
          <sink_obj>60</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>105</id>
          <edge_type>1</edge_type>
          <source_obj>14</source_obj>
          <sink_obj>60</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>106</id>
          <edge_type>1</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>60</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>107</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>60</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>108</id>
          <edge_type>1</edge_type>
          <source_obj>17</source_obj>
          <sink_obj>60</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>109</id>
          <edge_type>1</edge_type>
          <source_obj>18</source_obj>
          <sink_obj>60</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>110</id>
          <edge_type>1</edge_type>
          <source_obj>22</source_obj>
          <sink_obj>58</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>111</id>
          <edge_type>1</edge_type>
          <source_obj>23</source_obj>
          <sink_obj>59</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_32">
          <id>112</id>
          <edge_type>1</edge_type>
          <source_obj>24</source_obj>
          <sink_obj>60</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_33">
        <mId>1</mId>
        <mTag>Detecteur::Detecteur.1</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>89</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>1</mMinLatency>
        <mMaxLatency>2311</mMaxLatency>
        <mIsDfPipe>0</mIsDfPipe>
        <mDfPipe class_id="-1"/>
      </item>
    </cdfg_regions>
    <fsm class_id="24" tracking_level="1" version="0" object_id="_34">
      <states class_id="25" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="26" tracking_level="1" version="0" object_id="_35">
          <id>1</id>
          <operations class_id="27" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="28" tracking_level="1" version="0" object_id="_36">
              <id>58</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="28" object_id="_37">
              <id>59</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="28" object_id="_38">
              <id>60</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="26" object_id="_39">
          <id>2</id>
          <operations>
            <count>64</count>
            <item_version>0</item_version>
            <item class_id_reference="28" object_id="_40">
              <id>25</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_41">
              <id>26</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_42">
              <id>27</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_43">
              <id>28</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_44">
              <id>29</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_45">
              <id>30</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_46">
              <id>31</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_47">
              <id>32</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_48">
              <id>33</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_49">
              <id>34</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_50">
              <id>35</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_51">
              <id>36</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_52">
              <id>37</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_53">
              <id>38</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_54">
              <id>39</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_55">
              <id>40</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_56">
              <id>41</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_57">
              <id>42</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_58">
              <id>43</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_59">
              <id>44</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_60">
              <id>45</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_61">
              <id>46</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_62">
              <id>47</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_63">
              <id>48</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_64">
              <id>49</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_65">
              <id>50</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_66">
              <id>51</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_67">
              <id>52</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_68">
              <id>53</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_69">
              <id>54</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_70">
              <id>55</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_71">
              <id>56</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_72">
              <id>57</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_73">
              <id>58</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="28" object_id="_74">
              <id>59</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="28" object_id="_75">
              <id>60</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="28" object_id="_76">
              <id>61</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_77">
              <id>62</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_78">
              <id>63</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_79">
              <id>64</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_80">
              <id>65</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_81">
              <id>66</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_82">
              <id>67</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_83">
              <id>68</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_84">
              <id>69</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_85">
              <id>70</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_86">
              <id>71</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_87">
              <id>72</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_88">
              <id>73</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_89">
              <id>74</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_90">
              <id>75</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_91">
              <id>76</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_92">
              <id>77</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_93">
              <id>78</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_94">
              <id>79</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_95">
              <id>80</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_96">
              <id>81</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_97">
              <id>82</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_98">
              <id>83</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_99">
              <id>84</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_100">
              <id>85</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_101">
              <id>86</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_102">
              <id>87</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_103">
              <id>88</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="29" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="30" tracking_level="1" version="0" object_id="_104">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="31" tracking_level="0" version="0">
            <id>-1</id>
            <sop class_id="32" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="33" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="34" tracking_level="1" version="0" object_id="_105">
      <dp_component_resource class_id="35" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="0" version="0">
          <first>grp_DOUBLEUR_U_fu_130 (DOUBLEUR_U)</first>
          <second class_id="37" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="0" version="0">
              <first>FF</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>38</second>
            </item>
          </second>
        </item>
        <item>
          <first>grp_Seuil_calc_fu_100 (Seuil_calc)</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>180</second>
            </item>
            <item>
              <first>FF</first>
              <second>20912</second>
            </item>
            <item>
              <first>LUT</first>
              <second>18841</second>
            </item>
          </second>
        </item>
        <item>
          <first>grp_trames_separ_fu_114 (trames_separ)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>34</second>
            </item>
            <item>
              <first>LUT</first>
              <second>179</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>dbl2scalc_1_fifo_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>1024</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>8</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>8192</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>43</second>
            </item>
            <item>
              <first>LUT</first>
              <second>77</second>
            </item>
          </second>
        </item>
        <item>
          <first>dbl2tsep_1_fifo_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>1024</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>8</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>8192</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>43</second>
            </item>
            <item>
              <first>LUT</first>
              <second>77</second>
            </item>
          </second>
        </item>
        <item>
          <first>detect_1_fifo_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>1024</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>1024</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>39</second>
            </item>
            <item>
              <first>LUT</first>
              <second>73</second>
            </item>
          </second>
        </item>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>grp_DOUBLEUR_U_fu_130</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>grp_Seuil_calc_fu_100</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>grp_trames_separ_fu_114</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="39" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="0" version="0">
          <first>grp_DOUBLEUR_U_fu_130 (DOUBLEUR_U)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>60</item>
          </second>
        </item>
        <item>
          <first>grp_Seuil_calc_fu_100 (Seuil_calc)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>58</item>
          </second>
        </item>
        <item>
          <first>grp_trames_separ_fu_114 (trames_separ)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>59</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>dbl2scalc_1_fifo_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>121</item>
          </second>
        </item>
        <item>
          <first>dbl2tsep_1_fifo_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>123</item>
          </second>
        </item>
        <item>
          <first>detect_1_fifo_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>126</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="41" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="42" tracking_level="0" version="0">
        <first>58</first>
        <second class_id="43" tracking_level="0" version="0">
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>59</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>60</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>88</first>
        <second>
          <first>1</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="44" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="45" tracking_level="0" version="0">
        <first>89</first>
        <second class_id="46" tracking_level="0" version="0">
          <first>0</first>
          <second>1</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="47" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </regions>
    <dp_fu_nodes class_id="48" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="49" tracking_level="0" version="0">
        <first>100</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>58</item>
          <item>58</item>
        </second>
      </item>
      <item>
        <first>114</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>59</item>
          <item>59</item>
        </second>
      </item>
      <item>
        <first>130</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>60</item>
          <item>60</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="51" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>grp_DOUBLEUR_U_fu_130</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>60</item>
          <item>60</item>
        </second>
      </item>
      <item>
        <first>grp_Seuil_calc_fu_100</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>58</item>
          <item>58</item>
        </second>
      </item>
      <item>
        <first>grp_trames_separ_fu_114</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>59</item>
          <item>59</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="53" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="54" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>clock</first>
        <second>
          <count>0</count>
          <item_version>0</item_version>
        </second>
      </item>
      <item>
        <first>e</first>
        <second>
          <count>0</count>
          <item_version>0</item_version>
        </second>
      </item>
      <item>
        <first>reset</first>
        <second>
          <count>0</count>
          <item_version>0</item_version>
        </second>
      </item>
      <item>
        <first>s</first>
        <second>
          <count>0</count>
          <item_version>0</item_version>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="56" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="57" tracking_level="0" version="0">
        <first>3</first>
        <second>FIFO_SRL</second>
      </item>
      <item>
        <first>4</first>
        <second>FIFO_SRL</second>
      </item>
    </port2core>
    <node2core>
      <count>0</count>
      <item_version>0</item_version>
    </node2core>
  </syndb>
</boost_serialization>
