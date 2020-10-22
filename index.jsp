<!doctype html>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="logik.js"></script>
	<link rel="stylesheet" href="style.css" />
    <title>Schiffe versenken</title>
  </head>
  <body>
<!-----------------------------------------------------------Start-------------------------------------------------------------------->
	<div id="start" class="visible">
		<button id="bt1" class="btn btn-1 btn-1b">Spiel starten</button>
	</div>
	<div id="weiter" class="invisible">
		<button id="bt2" class="btn btn-1 btn-1b">Weiter</button>
	</div>
<!------------------------------------------------------------Konsole---------------------------------------------------------------->
	<div id="konsole" class="invisible">
		<h3>Wähle deine Schiffe</h3>
		<ul id="f" class="flotte">
			<li id="u">4x U-Boot</li>
			<li id="z">3x Zerstörer</li>
			<li id="k">2x Kreuzer</li>
			<li id="s">1x Schlachtschiff</li>
		</ul>
		<ul id="f2" class="invisible">
			<li id="u">4x U-Boot</li>
			<li id="z">3x Zerstörer</li>
			<li id="k">2x Kreuzer</li>
			<li id="s">1x Schlachtschiff</li>
		</ul>
		<div id="rotatediv" class="invisible">
			<button class="listbtn" id="rotate" >Rotiere Schiffe</button>
		</div><br>
		<div id="randomdiv" class="visible">
			<button class="listbtn" id="random" >Züfallig Platzieren</button>
		</div><br>
		<div id="fertigdiv" class="invisible">
			<button class="listbtn" id="fertig">Fertig</button>
		</div><br>
		<div id="fertig2div" class="invisible">
			<button class="listbtn" id="fertig2">Fertig</button>
		</div><br>
		<div id="reset" class="visible">
    		<button class="listbtn" onClick="window.location.reload();">Neues Spiel</button>
  		</div>
	</div>
<!----------------------------------------------------------Player 1-------------------------------------------------------------------->
	<h2 style="text-align:center;"></h2>

	<div id="p1" class="invisible" >
		<table class="grid">
			<colgroup>
				<%
				for(int i=0;i<16;i++){
					%><col width="30" />
				<%}%>
			</colgroup>
			<thead>
			<tr>
				<th>&nbsp&nbsp</th>
				<%
				for(char c='A';c<='P';c++){
					%><th><%=c%></th>
				<%}%>
			</tr>
			</thead>
			<tbody>
			<%for(int i=0;i<16;i++){ %>
			<tr>
				<th><%=i+1%></th>
					<%for(int j=0;j<16;j++){ %>
						
						<td id="<%=i%>a<%=j%>"></td>
						
					<%} %>
				<%} %>
			</tr>
			</tbody>			
		</table>
	</div>


	<div id="bclick" class="invisible" >
		<table class="grid">

			<tr>
				<th>&nbsp&nbsp</th>
				<%
				for(char c='A';c<='P';c++){
					%><th class="th2"><%=c%></th>
				<%}%>
			</tr>
			<%for(int i=0;i<16;i++){ %>
			<tr>
				<th class="th1"><%=i+1%></th>
				<%for(int j=0;j<16;j++){ %>
					<td class="tdclick" id="<%=i%>c<%=j%>"></td>
				<%} %>
			<%} %>			
		</table>
	</div>

<!----------------------------------------------------------Player 2-------------------------------------------------------------------->
	<div id="p2" class="invisible" >
			<table class="grid">
				<colgroup>
					<%
					for(int i=0;i<16;i++){
						%><col width="30" />
					<%}%>
				</colgroup>
				<thead>
				<tr>
					<th>&nbsp&nbsp</th>
					<%
					for(char c='A';c<='P';c++){
						%><th><%=c%></th>
					<%}%>
				</tr>
				</thead>
				<tbody>
				<%for(int i=0;i<16;i++){ %>
				<tr>
					<th><%=i+1%></th>
						<%for(int j=0;j<16;j++){ %>
							
							<td id="<%=i%>b<%=j%>"></td>
							
						<%} %>
					<%} %>
				</tr>
				</tbody>			
			</table>
		</div>


	<div id="aclick" class="invisible" >
		<table class="grid">

			<tr>
				<th>&nbsp&nbsp</th>
				<%
				for(char c='A';c<='P';c++){
					%><th class="th2"><%=c%></th>
				<%}%>
			</tr>
			<%for(int i=0;i<16;i++){ %>
			<tr>
				<th class="th1"><%=i+1%></th>
				<%for(int j=0;j<16;j++){ %>
					<td class="tdclick" id="<%=i%>d<%=j%>"></td>
				<%} %>
			<%} %>			
		</table>
	</div>

  </body>
</html>