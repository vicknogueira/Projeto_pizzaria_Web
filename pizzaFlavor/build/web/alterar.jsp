<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin-PizzaFlavor</title>

    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>

        <link rel="icon" type="imagem/png" href="assets/img/pizza.svg" />
        
        <style>
            footer{
            position: relative;
            margin-top: 105rem;
        }
        h2{
            font-size: 20px;
        }
        .list-group-item{
            background-color: #2D323E!important;
        }
        .list-group-item:hover{
            background-color: #ee5a24!important;
        }
        .list-group-item:focus{
            border-color: #ee5a24!important;
            background-color: #ee5a24!important;
        }
        /* Estilo do <main> */
        .main-container{
            margin-top: -17px;
            background-color: #f9f9f9;
            width: 100%;
            height: 105em;
        }

        /* Estilo dos svg de redes sociais */

        .instagram:hover{
            fill: rgb(185, 58, 179)!important;
            cursor: pointer;
        }
        .whatsappdiv:hover{
            cursor: pointer;
        }
        .whatsapp:hover{
            fill: greenyellow!important;
            cursor: pointer;
        }
         .facebook:hover{
            fill: #3131c3!important;
            cursor: pointer;
        }
        .botaoDeletar:hover .delete{
            visibility: visible!important;
            width: 100%;
            filter: drop-shadow(0px 1px 9px #EE5A24);
        }


        </style>
</head>
<body>
    <main class="">

    <!-- Navbar -->
        <nav class="d-flex align-items-center" style="background-color: #2D323E;height: 90px;">
            <a href="sistemaDesktop.html" class="text-light ml-3" style="font-size: 40px;">PizzaFlavor</a>

            <div class="d-flex" style="width: 68%; margin-left: 6em;">
                <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M13.1908 3.15141C14.0468 3.15141 14.7472 2.45103 14.7472 1.59499C14.7472 0.738963 14.0468 0.0385742 13.1908 0.0385742C12.9573 0.0385742 12.8017 0.194216 12.8017 0.427679C12.8017 0.661142 12.9573 0.816784 13.1908 0.816784C13.6188 0.816784 13.969 1.16698 13.969 1.59499C13.969 2.02301 13.6188 2.3732 13.1908 2.3732C12.3347 2.3732 11.6344 3.07359 11.6344 3.92962C11.5954 4.78566 12.2958 5.48604 13.1908 5.48604C13.4242 5.48604 13.5799 5.3304 13.5799 5.09694C13.5799 4.86348 13.4242 4.70783 13.1908 4.70783C12.7628 4.70783 12.4126 4.35764 12.4126 3.92962C12.4126 3.50161 12.7628 3.15141 13.1908 3.15141Z" fill="#EE5A24"/>
                    <path d="M16.2647 3.11284C17.1207 3.11284 17.8211 2.41245 17.8211 1.55642C17.8211 0.700389 17.1207 0 16.2647 0C16.0312 0 15.8756 0.155642 15.8756 0.389105C15.8756 0.622568 16.0312 0.77821 16.2647 0.77821C16.6927 0.77821 17.0429 1.1284 17.0429 1.55642C17.0429 1.98444 16.6927 2.33463 16.2647 2.33463C15.4086 2.33463 14.7083 3.03502 14.7083 3.89105C14.7083 4.74708 15.4086 5.44747 16.2647 5.44747C16.4981 5.44747 16.6538 5.29183 16.6538 5.05837C16.6538 4.8249 16.4981 4.66926 16.2647 4.66926C15.8367 4.66926 15.4865 4.31907 15.4865 3.89105C15.4865 3.46303 15.8367 3.11284 16.2647 3.11284Z" fill="#EE5A24"/>
                    <path d="M29.2608 20.3502H25.9924V16.6926H28.0157C28.2492 16.6926 28.4048 16.537 28.4048 16.3035V11.8288C28.4048 11.5953 28.2492 11.4397 28.0157 11.4397H27.004V7.39301C27.004 7.15955 26.8484 7.00391 26.6149 7.00391H1.75112C1.51766 7.00391 1.36201 7.15955 1.36201 7.39301V11.8288C1.36201 12.0623 1.51766 12.2179 1.75112 12.2179H2.76279V15.8755H0.739447C0.505984 15.8755 0.350342 16.0311 0.350342 16.2646V20.7004C0.350342 20.9339 0.505984 21.0895 0.739447 21.0895H4.00793V24.7471H2.37369C2.14022 24.7471 1.98458 24.9027 1.98458 25.1362V29.6109C1.98458 29.8444 2.14022 30 2.37369 30H27.2375C27.471 30 27.6266 29.8444 27.6266 29.6109V25.5642H29.2608C29.4943 25.5642 29.6499 25.4086 29.6499 25.1751V20.7393C29.6499 20.5059 29.4554 20.3502 29.2608 20.3502ZM27.6266 12.2179V15.8755H3.541V12.2179H26.576H27.6266ZM2.14022 11.4397V7.78212H26.1869V11.4397H3.1519H2.14022ZM1.12855 20.3502V16.6926H25.1752V20.3502H1.12855ZM26.8484 29.2218H2.76279V25.5642H4.35812C4.35812 25.5642 4.35812 25.5642 4.39703 25.5642H26.8484V29.2218ZM28.8717 24.786H27.2375C27.2375 24.786 27.2375 24.786 27.1986 24.786H4.82505V21.1284H28.8717V24.786Z" fill="#EE5A24"/>
                </svg>
                <h3 class="font-inherit ml-2" style="color: #EE5A24; font-weight: 100;">Editar produto</h3>
            </div>
        </nav>
        <article style="float: left; background-color: #2D323E; width: 15em; height: 35.46em;">
            <div class="list-group" style="background-color: #2D323E;">
                <a href="sistemaDesktop.html" class="list-group-item list-group-item-action text-light">
                    Produtos
                </a>
                <a href="promocoesProduto.html" class="list-group-item list-group-item-action text-light">Promoções</a>
              </div>
        </article>

        <section class="m-3">
            <div class="row d-flex">
                <form action="executaAlterar.jsp" method="post" class="col-md-6">
                        <h3 class="ml-3">Editar dados</h3>
                        <div class="form-group ml-3">
                            <label for="">Codigo</label>
                            <input type="text" name="id" value="<%=request.getParameter("id") %>" class="form-control" placeholder="Preço do produto">
                        </div>
                        <div class="form-group ml-3">
                            <label for="">Nome do produto</label>
                            <input type="text"name="nome" value="<%=request.getParameter("nome") %>" class="form-control" placeholder="Nome do produto">
                        </div>
                        <div class="form-group ml-3">
                            <label for="">Descrição</label>
                            <textarea type="text" value="<%=request.getParameter("descricao") %>" name="descricao" class="form-control" placeholder="Descrição do produto"></textarea>
                        </div>
                        <div class="form-group ml-3">
                            <label for="">Preço</label>
                            <input type="text" name="preco" value="<%=request.getParameter("preco") %>" class="form-control" placeholder="Preço do produto">
                        </div>
                        <div class="form-group ml-3" style="background-color: honeydew;">
                            <div class="d-flex justify-content-start">
                                <button class="btn btn-info">Escolher imagem</button>
                            </div>
                        </div>
                        <div class="form-group ml-3 mt-5" style="background-color: honeydew;">
                            <div class="d-flex justify-content-start">
                                <a href="sistemaDesktop.html" class="btn btn-info mr-3 w-50" style="background-color: #ababab; border: 0;">Cancelar</a>
                                <a type="submit" style="background-image: url(assets/img/plus2.svg); background-color: #EE5A24; height: 40px; background-repeat: no-repeat; background-position-y: 10px; background-position-x:10px; " class="btn text-light w-50">Salvar</a>

                            </div>
                        </div>
                </form>
                   </div>
                   <div class="col-md-6">
                        <div class="form-group ml-3">
                            <div class="card" style="width: 18rem;">
                                <img src="assets/img/Rectangle 12 (2).png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title mb-0">Pizza 4 queijos</h5>
                                  <p class="card-text">Pizza de massa crocante, recheada com 4 queijos</p>
                                  <p class="card-text">R$ 20,00</p>
                                </div>
                              </div>
                        </div>
                   </div>
            </div>
        </section>
        
    </main>
</body>
</html>
