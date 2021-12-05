<% 
String id = (String) request.getSession().getAttribute("id");  
%>

<header>
            <nav>
                <input type="checkbox" id="check">
                <label for="check" class="checkbtn">
                    <i class="fas fa-bars"></i>
                </label>

                <button class="logo" onclick="location.href='indexLogado.jsp'">
                    <img src="../../img/logoNwAmostrasClaro.png" class="imgLogo" id="imgLogoClaro" alt="Logo da NW Amostras">
                    <img src="../../img/logoNwAmostrasEscuro.png" class="imgLogo" id="imgLogoEscuro" alt="Logo da NW Amostras">
                </button>
                <ul>
<<<<<<< HEAD
                    <li><button class="buttonMenu" onclick="location.href='telaInicialProjetos.jsp?filtro=1'">Projetos</button></li>
=======
                    <li><button class="buttonMenu" onclick="location.href='telaInicialProjetos.jsp'">Projetos</button></li>

                    

>>>>>>> branch 'main' of https://github.com/wallacye/NwAmostras-front-end.git
                    <li><button class="buttonMenu" onclick="location.href='telaInicialMapaAmostras.jsp?filtro=3'">Mapa de Amostras</button></li>
                    <li><button class="buttonMenu" onclick="location.href='telaInicialAmostra.jsp?filtro=1'">Amostras</button></li>
                    <li><button class="buttonMenu" onclick="location.href='laboratorio.jsp'">Membros</button></li>

                    <li><button class="buttonMenu" id="idButtonMenuPerfilLogado" onclick="location.href='perfil.jsp'">
                    <img src="../../img/imgPerfilExemplo.png" class="menuFotoPerfil" id="" alt="Perfil">
                    </button></li>
                    
                    <li>
                    <form method="post" action="/NWAmostra_/alterarModoEscuro">
                   	<input type="hidden" name="inputIdPesq" id="inputIdPesq" value="<%= id %>">
                    <button class="buttonMenu" id="btnModoClaroEscuro" type="submit">
                        <img src="../../img/luaModoEscuro.png" class="imgBtnMenuTemaEscuroClaro" id="imgBtnMenuTemaEscuroLua" alt="Troca de temas">
                        <img src="../../img/solModoClaro.png" class="imgBtnMenuTemaEscuroClaro" id="imgBtnMenuTemaEscuroSol" alt="Troca de temas">
                    </button>
                    </form>
                    </li>
                </ul>
            </nav>
            
            <script>

            </script>
</header>