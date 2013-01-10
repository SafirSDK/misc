<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Se p&#xe5; systemet som ett p2p-system" ID="ID_151936236" CREATED="1353931635798" MODIFIED="1353932235925" COLOR="#000000">
<hook NAME="MapStyle" zoom="0.909" max_node_width="600"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<font SIZE="20"/>
<node TEXT="Hur ska distributionskanalerna fungera?" POSITION="right" ID="ID_1214560758" CREATED="1353931805304" MODIFIED="1353932235937" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Idag &#xe4;r de v&#xe4;ldigt h&#xe5;rt knutna till MC-grupper." ID="ID_382559674" CREATED="1353931818282" MODIFIED="1353932235945" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Vi vill inte ha den h&#xe5;rda knytningen, d&#xe5; vi inte s&#xe4;kert vill anv&#xe4;nda MC" ID="ID_368201022" CREATED="1353931842397" MODIFIED="1353932235949" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Borde titta p&#xe5; andra p2p-protokoll" POSITION="left" ID="ID_74997159" CREATED="1353931794919" MODIFIED="1353932235954" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Bittorrent" ID="ID_1699401212" CREATED="1353931944883" MODIFIED="1353932235958" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Ant?" ID="ID_137797962" CREATED="1353931949171" MODIFIED="1353932235962" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Routning och Gruppering &#xe4;r optimeringar" POSITION="left" ID="ID_596793181" CREATED="1353931685249" MODIFIED="1353932235970" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Multicast" ID="ID_897244386" CREATED="1353931730781" MODIFIED="1353932235977" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Delegering" ID="ID_1252618574" CREATED="1353931734701" MODIFIED="1353932235982" COLOR="#00b439">
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Att l&#229;ta en mellanliggande nod ta hand om &quot;all&quot; distribution till en &quot;avl&#228;gsen nod&quot;
    </p>
  </body>
</html></richcontent>
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="System Picture tar beslut om att sl&#xe5; ihop och dela upp grupper" ID="ID_1398983083" CREATED="1353931861608" MODIFIED="1353932235988" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Divergerande konnektivitet g&#xf6;r att gruppering sker" ID="ID_1859833985" CREATED="1353931969411" MODIFIED="1353932235991" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="Varje grupp har en egen &quot;dirty-k&#xf6;&quot; i dose_main" ID="ID_592636010" CREATED="1353932000676" MODIFIED="1353932235996" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="M&#xe5;ste kunna synka dirty-k&#xf6;er" ID="ID_242013436" CREATED="1353932045317" MODIFIED="1353932235999" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="M&#xe5;ste kunna splitta dirty-k&#xf6;er" ID="ID_1238758158" CREATED="1353932078982" MODIFIED="1353932236001" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
<node TEXT="Hur ska de h&#xe4;r grupperna samverka med distributionskanaler" ID="ID_359742406" CREATED="1353931987588" MODIFIED="1353932236005" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Alla noder kan kommunicera med alla andra" POSITION="right" ID="ID_1203748588" CREATED="1353931958683" MODIFIED="1353932236008" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
</node>
<node TEXT="Blir oh&#xe5;llbart komplext om det kan finnas mer &#xa;&#xe4;n en Communication per dob-instans" POSITION="right" ID="ID_1453911000" CREATED="1353932109495" MODIFIED="1353932236050" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
</node>
<node TEXT="Ett &quot;tr&#xe4;d&quot; f&#xf6;r all utg&#xe5;ende trafik f&#xf6;r varje nod" POSITION="left" ID="ID_1956957821" CREATED="1353935044142" MODIFIED="1353935061674" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Eller ett per distributionskanal och nod" ID="ID_62412019" CREATED="1353935062925" MODIFIED="1353935079081" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="en dirty-k&#xf6; f&#xf6;r varje?" ID="ID_1372201558" CREATED="1353935079086" MODIFIED="1353935088854" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
<node TEXT="Detta betyder (nog) att vi skippar MC helt." ID="ID_827259623" CREATED="1353935096391" MODIFIED="1353935111934" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Nja, man kan ju se det som att det &#xe4;r s&#xe5; h&#xe4;r dose_com g&#xf6;r" ID="ID_72867753" CREATED="1354008872742" MODIFIED="1354008887782" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Den kan automatiskt v&#xe4;lja mellan unicast och multicast (se det som de dynamiska tr&#xe4;den)" ID="ID_1296173222" CREATED="1354008887787" MODIFIED="1354008920019" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="De statiska tr&#xe4;den har vi redan med distributionskanalerna." ID="ID_974471710" CREATED="1354008935528" MODIFIED="1354008951409" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="dose_com-tr&#xe4;den &#xe4;r bara en niv&#xe5; djupa." ID="ID_1242390968" CREATED="1354019007703" MODIFIED="1354019017863" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
</node>
<node TEXT="Oackat: f&#xf6;rlorar vi f&#xf6;r mycket?" POSITION="right" ID="ID_1443283758" CREATED="1354019021759" MODIFIED="1354019045302" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="N&#xe4;r vi g&#xe5;r i flera led i ett tr&#xe4;d" ID="ID_640273398" CREATED="1354096410906" MODIFIED="1354096420860" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Hur best&#xe4;mma tr&#xe4;dens f&#xf6;rgreningar" POSITION="left" ID="ID_1880846066" CREATED="1354019047080" MODIFIED="1354019068569" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="p&#xe5; ett LAN blir det potentiellt h&#xf6;g latens med m&#xe5;nga niv&#xe5;er." ID="ID_354894068" CREATED="1354019069688" MODIFIED="1354019096128" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="&quot;Viktiga&quot; noder b&#xf6;r komma n&#xe4;ra producenten i tr&#xe4;det." ID="ID_806546967" CREATED="1354019097633" MODIFIED="1354019122786" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="" POSITION="right" ID="ID_1235742957" CREATED="1354096516039" MODIFIED="1354096516045" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
</node>
</node>
</map>
