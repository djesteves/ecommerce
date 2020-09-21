<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="Assets/header.jsp" />

<h1>Carrinho</h1>
<hr>
<form method="POST" action="finalizarCompra">
    <table class="table table-dark">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">DESCRIÇÃO</th>
            <th scope="col">PREÇO</th>
                <c:if test="${usuarioLogado != null}">
                <th scope="col">OPÇÕES</th>
                </c:if> 
        </tr>

        <c:forEach items="${lista}" var="p">

            <tr>
                <td>${p.id}</td>
                <td>${p.descricao}</td>
                <td><fmt:formatNumber value="${p.preco}" type="currency"/></td>   
                <c:if test="${usuarioLogado != null}">

                    <td>
                        <a href="removerProduto?id=${p.id}"><button class="btn btn-danger" type="button">Remover do Carrinho</button></a>
                    </td>
                </c:if>  
            </tr> 

        </c:forEach>
    </table>
    <br><br>
    <input type="submit" class="btn btn-primary btn-block" value="Finalizar Compra">
</form>

<jsp:include page="Assets/footer.jsp" />
