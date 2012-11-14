<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Designa och implementera&#xa;nytt distributionskoncept" ID="ID_1974903012" CREATED="1350384151073" MODIFIED="1351670257173" COLOR="#000000" STYLE="fork">
<font NAME="Liberation Sans" SIZE="20" BOLD="true"/>
<hook NAME="MapStyle" zoom="0.75" max_node_width="600"/>
<edge STYLE="bezier" COLOR="#808080" WIDTH="thin"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Det h&#228;r &#228;r en &#246;nskelista &#246;ver saker som vi skulle vilja se hos det perfekta systemet!
    </p>
  </body>
</html></richcontent>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<icon BUILTIN="calendar"/>
<node TEXT="Persistens" POSITION="right" ID="ID_1767719401" CREATED="1350384370913" MODIFIED="1350385241576" COLOR="#0033ff" STYLE="fork">
<font NAME="Liberation Sans" SIZE="18" BOLD="true"/>
<edge STYLE="sharp_bezier" COLOR="#808080" WIDTH="8"/>
<node TEXT="Hur passar ghostarna in i allt det h&#xe4;r?" ID="ID_1467677305" CREATED="1350473878793" MODIFIED="1350473883520" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Redundans" POSITION="left" ID="ID_328888544" CREATED="1350384393082" MODIFIED="1350385241579" COLOR="#0033ff" STYLE="fork">
<font NAME="Liberation Sans" SIZE="18" BOLD="true"/>
<edge STYLE="sharp_bezier" COLOR="#808080" WIDTH="8"/>
<node TEXT="Ska vi ha nodvis redundans" ID="ID_1126118256" CREATED="1351671390217" MODIFIED="1352881870837" COLOR="#00b439">
<font NAME="Aharoni" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<icon BUILTIN="help"/>
<node TEXT="Har snac st&#xf6;d f&#xf6;r detta?" ID="ID_1619640296" CREATED="1351671413666" MODIFIED="1351671452080" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
</node>
<node TEXT="Test" POSITION="right" ID="ID_1507078929" CREATED="1350384523933" MODIFIED="1350385241582" COLOR="#0033ff" STYLE="fork">
<font NAME="Liberation Sans" SIZE="18" BOLD="true"/>
<edge STYLE="sharp_bezier" COLOR="#808080" WIDTH="8"/>
<node TEXT="Vi beh&#xf6;ver en teststrategi" ID="ID_1485143790" CREATED="1350384529210" MODIFIED="1350385241588" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Vi beh&#xf6;ver ett testsystem" ID="ID_995983358" CREATED="1350384549662" MODIFIED="1350385241592" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="j&#xe4;mf&#xf6;ra med gamla dose_com" ID="ID_770145054" CREATED="1350384560897" MODIFIED="1350385241594" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="vad f&#xf6;r h&#xe5;rdvara" ID="ID_1137061638" CREATED="1350384571374" MODIFIED="1350385241597" COLOR="#990000">
<font NAME="Aharoni" SIZE="14"/>
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node TEXT="Heterogena n&#xe4;tverk" POSITION="left" ID="ID_1268611760" CREATED="1350384643176" MODIFIED="1350385241605" COLOR="#0033ff" STYLE="fork">
<font NAME="Liberation Sans" SIZE="18" BOLD="true"/>
<edge STYLE="sharp_bezier" COLOR="#808080" WIDTH="8"/>
<node TEXT="l&#xe5;ngsamma noder" ID="ID_1131693722" CREATED="1350384667297" MODIFIED="1350385241609" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="skakigt n&#xe4;tverk" ID="ID_1525811286" CREATED="1350384676321" MODIFIED="1350385241612" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="utfrysning" ID="ID_1901665081" CREATED="1350384683697" MODIFIED="1350385241615" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Utnyttja objektcachen f&#xf6;r oms&#xe4;ndningar,&#xa;istf separata k&#xf6;er" ID="ID_1834286426" CREATED="1350386177410" MODIFIED="1350386353239" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Kan man t&#228;nka sig att dose_main har en connection per nod som den ska distribuera till, s&#229; blir dirty-subs-k&#246;n en form av markering av vilka entiteter som inte &#228;r skickade &#228;n till en specifik nod.
    </p>
    <p>
      En connection per nod som den ska skicka till ger att man kan ha olika data skickade till olika noder, utan att beh&#246;va s&#228;tta upp en till parallell mekanism f&#246;r att markera vad som &#228;r skickat vart.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Nod som inte startar om ska inte smitta &#xa;med d&#xe5;ligt data - Inkarnationsbegrepp" ID="ID_762387035" CREATED="1350386654164" MODIFIED="1350386663280" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Detektera n&#xe4;tverkstopologi (och visa upp den)" ID="ID_1201564572" CREATED="1350386819641" MODIFIED="1350386835287" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Routing" ID="ID_916385708" CREATED="1350386844946" MODIFIED="1350386847087" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Forwarding" ID="ID_1361134813" CREATED="1350386847266" MODIFIED="1350386849599" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="&#xd6;vriga features" POSITION="right" ID="ID_1535416386" CREATED="1350384749051" MODIFIED="1350385241619" COLOR="#0033ff" STYLE="fork">
<font NAME="Liberation Sans" SIZE="18" BOLD="true"/>
<edge STYLE="sharp_bezier" COLOR="#808080" WIDTH="8"/>
<node TEXT="Hantera krypterade n&#xe4;tverk" ID="ID_1543283849" CREATED="1350384758163" MODIFIED="1350385241623" COLOR="#00b439">
<font NAME="Aharoni" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<icon BUILTIN="help"/>
</node>
<node TEXT="Ska klara anrop fr&#xe5;n flera tr&#xe5;dar" ID="ID_407069403" CREATED="1350385496776" MODIFIED="1350385517757" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Flera instanser p&#xe5; samma dator" ID="ID_71552100" CREATED="1350385518072" MODIFIED="1350385529025" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Underl&#xe4;ttar testning av m&#xe5;nga noder" ID="ID_204596317" CREATED="1350385529027" MODIFIED="1350385539797" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
<node TEXT="Ska kunna stoppas snyggt" ID="ID_1915790682" CREATED="1350385540697" MODIFIED="1350385550974" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="IPv6" ID="ID_1010948667" CREATED="1350385551513" MODIFIED="1350385642656" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="om inte annat s&#xe5; ska vi dokumentera vad vi klarar av" ID="ID_435589195" CREATED="1350474121695" MODIFIED="1350474134493" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
<node TEXT="Olika dou-upps&#xe4;ttningar p&#xe5; noderna" ID="ID_822200789" CREATED="1350386378816" MODIFIED="1350386485996" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Datatyper som inte delas b&#246;r kunna vara olika. Men det v&#229;gar vi inte idag, eftersom vi inte har n&#229;gon som helst kontroll p&#229; att typerna matchar.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Ta bort standalone mode" ID="ID_246152748" CREATED="1350386858602" MODIFIED="1350387095714" COLOR="#00b439">
<font NAME="Aharoni" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<icon BUILTIN="help"/>
</node>
<node TEXT="Ska SNAC kunna anv&#xe4;nda denna mekanism direkt" ID="ID_1319657920" CREATED="1351671512484" MODIFIED="1352881870857" COLOR="#00b439">
<font NAME="Aharoni" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="Dokumentation" POSITION="right" ID="ID_1927844699" CREATED="1350384931704" MODIFIED="1350385241648" COLOR="#0033ff" STYLE="fork">
<font NAME="Liberation Sans" SIZE="18" BOLD="true"/>
<edge STYLE="sharp_bezier" COLOR="#808080" WIDTH="8"/>
<node TEXT="Tydligt kravdokument" ID="ID_329479289" CREATED="1350384939872" MODIFIED="1350385241678" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Det m&#xe5;ste vara tydligt vad&#xa;vi klarar och inte klarar" ID="ID_305164190" CREATED="1350384949356" MODIFIED="1350385241716" COLOR="#990000">
<font SIZE="14"/>
<node TEXT="Oavsett f&#xe5;r systemet inte bli korrupt" ID="ID_573683793" CREATED="1350386796805" MODIFIED="1350386804325" COLOR="#111111">
<font SIZE="12"/>
</node>
</node>
</node>
<node TEXT="Beskriv system vs system av system" ID="ID_1719413464" CREATED="1350386903467" MODIFIED="1350474534184" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="latens vs bandbredd" ID="ID_923457500" CREATED="1350474461612" MODIFIED="1350474475025" COLOR="#990000">
<font SIZE="14"/>
<node TEXT="iex st&#xf6;djer h&#xf6;g latens och l&#xe5;g bandbredd" ID="ID_65343250" CREATED="1350474541737" MODIFIED="1350474566178" COLOR="#111111">
<font SIZE="12"/>
</node>
<node TEXT="doben st&#xf6;djer allt fr&#xe5;n l&#xe5;g till h&#xf6;g latens &#xa;men f&#xf6;rv&#xe4;ntar sig h&#xf6;g bandbredd" ID="ID_1953954871" CREATED="1350474567087" MODIFIED="1350474588390" COLOR="#111111">
<font SIZE="12"/>
</node>
</node>
<node TEXT="iex skickar deltan" ID="ID_198157407" CREATED="1350474476346" MODIFIED="1350474484400" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="doben skickar hela state" ID="ID_1400541329" CREATED="1350474484836" MODIFIED="1350474492490" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="doben har singel&#xe4;garskap" ID="ID_213497900" CREATED="1350474493147" MODIFIED="1350474504456" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="iex har delat &#xe4;garskap" ID="ID_1497781155" CREATED="1350474505116" MODIFIED="1350474509614" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="Att koda mot injektionsdeltan &#xe4;r komplicerat" ID="ID_85997306" CREATED="1350474693175" MODIFIED="1350474714681" COLOR="#990000">
<font SIZE="14"/>
<node TEXT="ett rent dobsystem &#xe4;r l&#xe4;ttare att koda f&#xf6;r" ID="ID_405086388" CREATED="1350474801716" MODIFIED="1350474815541" COLOR="#111111">
<font SIZE="12"/>
</node>
<node TEXT="iex anv&#xe4;nder man bara n&#xe4;r man verkligen beh&#xf6;ver det och &#xa;bara p&#xe5; de typer som beh&#xf6;ver skickas &#xf6;ver iex-kanalen" ID="ID_1114719899" CREATED="1350474819946" MODIFIED="1350474848609" COLOR="#111111">
<font SIZE="12"/>
</node>
</node>
</node>
<node TEXT="Latensmodell" ID="ID_1771393970" CREATED="1350474943940" MODIFIED="1350474949042" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Tredjepartsprodukter" POSITION="left" ID="ID_585736920" CREATED="1350384969961" MODIFIED="1350632025377" COLOR="#0033ff" STYLE="fork">
<font NAME="Liberation Sans" SIZE="18" BOLD="true"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Saker att kanske anv&#228;nda eller i alla fall l&#228;ra sig av
    </p>
  </body>
</html></richcontent>
<edge STYLE="sharp_bezier" COLOR="#808080" WIDTH="8"/>
<node TEXT="DDS" ID="ID_1709223329" CREATED="1350384982969" MODIFIED="1350385241774" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Bittorrent" ID="ID_628744058" CREATED="1350384986194" MODIFIED="1350385241783" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="MessageQ" ID="ID_713953321" CREATED="1350384988594" MODIFIED="1350385241794" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="ReliableMC" ID="ID_426668616" CREATED="1350384991954" MODIFIED="1350385241812" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Spread" ID="ID_295716595" CREATED="1350384999250" MODIFIED="1350385241815" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Databasreplikering" ID="ID_1629499023" CREATED="1350385003370" MODIFIED="1350385241817" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="PGM" ID="ID_1451074025" CREATED="1350385009482" MODIFIED="1350385241820" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Protobuf" ID="ID_1281879531" CREATED="1350385760335" MODIFIED="1350385798128" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      I st&#228;llet f&#246;r att ha v&#229;r egen wrapper runt blobbarna s&#229; kan vi kanske anv&#228;nda protobuf s&#229; fungerar wireshark och liknande enklare
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="dose_com features&#xa;av idag" POSITION="right" ID="ID_1265475407" CREATED="1350385058084" MODIFIED="1350474936598" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Oklart vilka av punkterna som verkligen &#228;r buggfria och har en vettig design. Men det h&#228;r &#228;r v&#229;r syn p&#229; dose_com.
    </p>
  </body>
</html></richcontent>
<node TEXT="pooldistribution" ID="ID_92610015" CREATED="1350385091157" MODIFIED="1350385241908" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="nodstatus" ID="ID_1694045108" CREATED="1350385099189" MODIFIED="1350385241910" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="prioritetskanaler" ID="ID_200341760" CREATED="1350385101509" MODIFIED="1350385241927" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="distributionskanaler" ID="ID_675271168" CREATED="1350385105517" MODIFIED="1350385241929" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="ackad/oackad" ID="ID_862075526" CREATED="1350385110877" MODIFIED="1350385241932" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="multicast m unicast-ack" ID="ID_368130728" CREATED="1350385117493" MODIFIED="1350385241935" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="sliding window - fast storlek" ID="ID_1980424891" CREATED="1350385126367" MODIFIED="1350385241946" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="max 64 noder" ID="ID_1368201908" CREATED="1350385140694" MODIFIED="1350385241956" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="designad f&#xf6;r &quot;stabilt&quot; LAN" ID="ID_454863524" CREATED="1350385147670" MODIFIED="1350385241959" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="inga l&#xe5;s" ID="ID_557719554" CREATED="1350385202664" MODIFIED="1350385241968" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="f&#xe5; kopieringar" ID="ID_689574460" CREATED="1350385312443" MODIFIED="1350385319959" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="little/big endian detektion" ID="ID_873014418" CREATED="1350385320171" MODIFIED="1350385391061" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inte s&#228;kert att detta &#228;r implementerat, men designen &#228;r att dose_com ska detektera det och tala om f&#246;r dose_main om bytarna m&#229;ste skiftas eller inte. dose_main ska d&#229; be dots_kernel att ordna om blobben.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="&quot;k&#xe4;nd&quot; latency" ID="ID_410232770" CREATED="1350385393285" MODIFIED="1350385402618" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Magic byte f&#xf6;r detektering av annan trafik" ID="ID_536806355" CREATED="1350477071736" MODIFIED="1350477086137" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="obs, detta kanske &#xe4;r r&#xe4;tt underm&#xe5;ligt..." ID="ID_229119123" CREATED="1350477086140" MODIFIED="1350477094909" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
<node TEXT="multihome:ade maskiner" ID="ID_1238416167" CREATED="1350632036040" MODIFIED="1350632050782" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Konfiguration" POSITION="left" ID="ID_1399669138" CREATED="1350385560721" MODIFIED="1350385884743" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="&quot;Det ska bara funka&quot;" ID="ID_776959609" CREATED="1350385572427" MODIFIED="1350385580463" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Utan explicit konfiguration f&#xe5;r man IS-beteende" ID="ID_1079156078" CREATED="1350385891186" MODIFIED="1350385894119" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="F&#xf6;r RT-beteende m&#xe5;ste man konfigurera" ID="ID_587107495" CREATED="1350385898347" MODIFIED="1350385900095" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
<node TEXT="Enklare med brandv&#xe4;ggar" ID="ID_1812659765" CREATED="1350385622955" MODIFIED="1350385908808" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="F&#xe4;rre portar" ID="ID_343673329" CREATED="1350386686463" MODIFIED="1350387095739" COLOR="#990000">
<font NAME="Aharoni" SIZE="14"/>
<icon BUILTIN="help"/>
</node>
<node TEXT="Holepunching" ID="ID_189241402" CREATED="1350473559137" MODIFIED="1350631972719" COLOR="#990000">
<font NAME="Aharoni" SIZE="14"/>
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="Olika nodtyper" ID="ID_1429196235" CREATED="1350385913331" MODIFIED="1350385918616" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Olika beteende p&#xe5; n&#xe4;tverket RT/IS" ID="ID_951878445" CREATED="1350385925083" MODIFIED="1350385939136" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="nodtyp som kastar ghostar" ID="ID_1432762056" CREATED="1350385939940" MODIFIED="1350386008149" COLOR="#990000">
<font SIZE="14"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Tanken &#228;r att det ska kunna vara en operat&#246;rsplats som blir blank n&#228;r resten av systemet startas om eller kopplas bort.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Entiteter som inte f&#xf6;rsvinner utan explicit delete/unregister" ID="ID_1312701450" CREATED="1350386012558" MODIFIED="1350386146522" COLOR="#990000">
<font SIZE="14"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Kan vara baserat p&#229; nodtyp eller objekttyp.
    </p>
    <p>
      Tanken &#228;r att det skulle kunna vara en operat&#246;rsplats d&#228;r allt data ligger kvar (read-only) n&#228;r man tappar kontakten med resten av systemet. D&#229; kan man fortfarande titta i listor och p&#229; kartor medan man v&#228;ntar p&#229; kontakt.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Ta bort de h&#xe5;rda nod-id:na som begr&#xe4;nsar oss till 64 noder" ID="ID_1341189782" CREATED="1350386716926" MODIFIED="1350473776277" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="anv&#xe4;ndardefinierade &quot;nodtyper&quot; med olika beteendeparametrar" ID="ID_1026330436" CREATED="1350386740439" MODIFIED="1350473794072" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
</node>
<node TEXT="Aktiviteter" POSITION="right" ID="ID_250784268" CREATED="1350385808432" MODIFIED="1350385811685" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Ta fram n&#xe5;gra typsystem" ID="ID_1986731336" CREATED="1350385813768" MODIFIED="1350385821470" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Kolla p&#xe5; tredjepartsprodukter" ID="ID_119578248" CREATED="1350385821984" MODIFIED="1350385834062" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Dela upp i funktionsomr&#xe5;den" ID="ID_1562886203" CREATED="1350385839825" MODIFIED="1350385846198" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="L&#xe4;s SSS" ID="ID_551023487" CREATED="1350385846745" MODIFIED="1350385849822" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Split/Join" POSITION="left" ID="ID_1126285530" CREATED="1350386666205" MODIFIED="1350386670825" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Definiera vad en anv&#xe4;ndbar split/join m&#xe5;ste g&#xf6;ra" ID="ID_1928367277" CREATED="1350473814985" MODIFIED="1350473848480" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Efter join ska &#xe4;garskapet kunna vara f&#xf6;ruts&#xe4;gbart" ID="ID_1082298378" CREATED="1351071043087" MODIFIED="1351071099443" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Antingen ligga kvar p&#xe5; samma noder som de var p&#xe5; innann" ID="ID_25831535" CREATED="1351071099449" MODIFIED="1351071113996" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="Eller samlat p&#xe5; en nod" ID="ID_453184712" CREATED="1351071114976" MODIFIED="1351071130970" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="Mer" ID="ID_1647386850" CREATED="1351071131543" MODIFIED="1351670060056" COLOR="#990000">
<font NAME="Aharoni" SIZE="14"/>
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node TEXT="Skalbarhet/prestanda" POSITION="left" ID="ID_193019018" CREATED="1350473965146" MODIFIED="1350473971090" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="dose_main b&#xf6;r kunna vara flertr&#xe5;dad" ID="ID_643826138" CREATED="1350473972986" MODIFIED="1350473980812" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="cache-lokalitet b&#xf6;r tas h&#xe4;nsyn till" ID="ID_1540132623" CREATED="1350473981350" MODIFIED="1350473994581" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="S&#xe4;kerhet/Robusthet" POSITION="right" ID="ID_453771621" CREATED="1350476914749" MODIFIED="1350477500124" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Signering" ID="ID_674747807" CREATED="1350476990425" MODIFIED="1350631972724" COLOR="#00b439">
<font NAME="Aharoni" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<icon BUILTIN="help"/>
</node>
<node TEXT="Kryptering" ID="ID_402311864" CREATED="1350476993587" MODIFIED="1350631972725" COLOR="#00b439">
<font NAME="Aharoni" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<icon BUILTIN="help"/>
</node>
<node TEXT="Checksummering" ID="ID_681445473" CREATED="1350476996734" MODIFIED="1350477000561" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="g&#xe5;r vi p&#xe5; n&#xe4;tverk d&#xe4;r vi kan f&#xe5; korruption?" ID="ID_884482815" CREATED="1350477261543" MODIFIED="1350477281432" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
<node TEXT="Tydligg&#xf6;r att det delade minnet ej &#xe4;r krypterat" ID="ID_1691691419" CREATED="1350477017097" MODIFIED="1350477028239" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Eller s&#xe4;ga att man f&#xe5;r k&#xf6;ra VPN ist&#xe4;llet" ID="ID_1118369825" CREATED="1350477099612" MODIFIED="1350477111469" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Signering kan ju stoppa MITM-attacker, vilket kan &#xa;ge robusthet oavsett &#xf6;vriga s&#xe4;kerhetsl&#xf6;sningar." ID="ID_237197565" CREATED="1350477124809" MODIFIED="1350477222595" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Typsystem" POSITION="left" ID="ID_661653783" CREATED="1351670269027" MODIFIED="1352882052145" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="html link" ID="ID_11620104" CREATED="1352882000379" MODIFIED="1352882045775" COLOR="#00b439" LINK="typical_systems.html">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="mindmap link" ID="ID_922760631" CREATED="1352882005284" MODIFIED="1352882023557" COLOR="#00b439" LINK="typical_systems.mm">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
</node>
</map>
