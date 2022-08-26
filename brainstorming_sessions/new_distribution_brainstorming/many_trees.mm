<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Ett tr&#xe4;d f&#xf6;r varje distributionskanal och nod" ID="ID_629641465" CREATED="1354096601568" MODIFIED="1354096639060" COLOR="#000000">
<hook NAME="MapStyle" max_node_width="600"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<font SIZE="20"/>
<node TEXT="Hur ska prioriteterna hanteras?" POSITION="left" ID="ID_1821416504" CREATED="1354096659802" MODIFIED="1354096669355" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
</node>
<node TEXT="Ackat/oackat" POSITION="right" ID="ID_1631446647" CREATED="1354096670682" MODIFIED="1354096678483" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Idag &#xe4;r prioritetskanalerna sex olika portar" ID="ID_271614717" CREATED="1354097301628" MODIFIED="1354097318875" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Man kan inte blanda ackat och oackat p&#xe5; samma kanal" ID="ID_252398918" CREATED="1354097319491" MODIFIED="1354097724861" COLOR="#990000">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Varf&#xf6;r d&#xe5;?" ID="ID_1758880873" CREATED="1354097357749" MODIFIED="1354097724862" COLOR="#111111">
<font SIZE="12"/>
<node TEXT="Har f&#xf6;r mig att det hade n&#xe5;got med att de oackade &quot;k&#xf6;r om&quot; de ackade om de ligger p&#xe5; samma kanal." ID="ID_549657110" CREATED="1354097786936" MODIFIED="1354097813944" COLOR="#111111">
<font SIZE="12"/>
</node>
</node>
<node TEXT="Vi har hela USSR-problematiken att ta h&#xe4;nsyn till" ID="ID_676931145" CREATED="1354097364182" MODIFIED="1354097724864" COLOR="#111111">
<font SIZE="12"/>
</node>
<node TEXT="I dag s&#xe5; skickas registreringar och &quot;end states&quot; f&#xf6;r oackade typer p&#xe5; ackade kanaler" ID="ID_247555559" CREATED="1354097375925" MODIFIED="1354097724865" COLOR="#111111">
<font SIZE="12"/>
</node>
</node>
</node>
<node TEXT="Kan vi f&#xf6;renkla?" ID="ID_92520078" CREATED="1354097732767" MODIFIED="1354097741791" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="Ha tre kanaler: l&#xe5;g, medium och h&#xf6;g" ID="ID_589334130" CREATED="1354097743134" MODIFIED="1354097760983" COLOR="#990000">
<font SIZE="14"/>
<node TEXT="Blanda ackat och oackat p&#xe5; kanalen?" ID="ID_458348456" CREATED="1354097765344" MODIFIED="1354097776912" COLOR="#111111">
<font SIZE="12"/>
</node>
</node>
<node TEXT="Inte konfigurerbara kanaler" ID="ID_1868060245" CREATED="1354103228766" MODIFIED="1354103242654" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="Ska det vara prioritering p&#xe5; b&#xe5;de s&#xe4;nd och mottagarsidan?" ID="ID_1165642607" CREATED="1354103254751" MODIFIED="1354103282247" COLOR="#990000">
<font SIZE="14"/>
<node TEXT="Idag tror jag att det &#xe4;r p&#xe5; b&#xe5;da sidorna, s&#xe5; att det finns olika utk&#xf6;er f&#xf6;r de olika prioriteterna" ID="ID_762326312" CREATED="1354103286880" MODIFIED="1354103315138" COLOR="#111111">
<font SIZE="12"/>
</node>
<node TEXT="Och olika ink&#xf6;er som man l&#xe4;ser p&#xe5; med en prioriterad round-robin algoritm" ID="ID_1358547325" CREATED="1354103315801" MODIFIED="1354103345361" COLOR="#111111">
<font SIZE="12"/>
</node>
<node TEXT="&#xc4;r det verkligen optimalt? Man offrar troligen en del throughput p&#xe5; att k&#xf6;ra round-robin" ID="ID_1669908386" CREATED="1354107121807" MODIFIED="1354107149639" COLOR="#111111">
<font SIZE="12"/>
</node>
</node>
</node>
<node TEXT="En dirty-k&#xf6; per prioritetskanal och DC?" ID="ID_500929173" CREATED="1354097833977" MODIFIED="1354097851145" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Varje DC har ett eget tr&#xe4;d" POSITION="right" ID="ID_1304008166" CREATED="1354096697268" MODIFIED="1354096731208" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Statiskt antal tr&#xe4;d" ID="ID_124368548" CREATED="1354096731213" MODIFIED="1354096742012" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="antal noder i tr&#xe4;det kan vara olika (alla noder &#xe4;r inte med i alla DC)" ID="ID_1051528118" CREATED="1354096745509" MODIFIED="1354096769335" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Ger m&#xf6;jlighet att optimera tr&#xe4;den f&#xf6;r olika datam&#xe4;ngder" ID="ID_561002294" CREATED="1354096782110" MODIFIED="1354096795885" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
<node TEXT="En DC kan k&#xf6;ra A, B och C med multicast och D med unicast&#xa;H&#xf6;g trafikm&#xe4;ngd, och D h&#xe4;nger inte med." ID="ID_1384083457" CREATED="1354096829184" MODIFIED="1354096895280" COLOR="#990000">
<font SIZE="14"/>
</node>
<node TEXT="En annan kan k&#xf6;ra alla med MC, om det &#xe4;r l&#xe5;g trafik exvis" ID="ID_1942201667" CREATED="1354096859088" MODIFIED="1354096879552" COLOR="#990000">
<font SIZE="14"/>
</node>
</node>
</node>
<node TEXT="Vi m&#xe5;ste v&#xe4;nda upp och ner p&#xe5; send-sidan" POSITION="left" ID="ID_1743169920" CREATED="1354096903393" MODIFIED="1354097038460" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<node TEXT="Idag stoppar dose_main ner saker i dose_coms k&#xf6;er" ID="ID_1664944471" CREATED="1354097042748" MODIFIED="1354097055100" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Ist&#xe4;llet s&#xe5; vill vi (nog) att distny &quot;h&#xe4;mtar&quot; saker i den takt den sj&#xe4;lv vill." ID="ID_1071199651" CREATED="1354097055661" MODIFIED="1354097083613" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Per distributionskanal?" ID="ID_1113784348" CREATED="1354097084189" MODIFIED="1354097092398" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Skicka ner ett API f&#xf6;r att h&#xe4;mta saker att skicka." ID="ID_1298618007" CREATED="1354097102511" MODIFIED="1354097117862" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="D&#xe5; kan den anv&#xe4;nda det delade minnet som &quot;utk&#xf6;&quot; och dirty-k&#xf6;erna kan anv&#xe4;ndas direkt, ist&#xe4;llet f&#xf6;r att ha en mellanliggande k&#xf6;." ID="ID_1057575434" CREATED="1354097118503" MODIFIED="1354097158472" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
<node TEXT="Funkar dirty-k&#xf6;n direkt f&#xf6;r detta, speciellt m.a.p. sliding-window?" ID="ID_580859041" CREATED="1354097163592" MODIFIED="1354097184288" COLOR="#00b439">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>
</node>
</node>
<node TEXT="Har mest funderat p&#xe5; entiteterna&#xa;Requests och messages brukar l&#xf6;sa sig..." POSITION="right" ID="ID_1337337682" CREATED="1354097864546" MODIFIED="1354097882555" COLOR="#0033ff">
<font SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
</node>
</node>
</map>
