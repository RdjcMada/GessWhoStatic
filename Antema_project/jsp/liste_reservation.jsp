<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>

<%
List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations");
String erreur = (String) request.getAttribute("erreur");
%>

<%@ include file="part/header.jsp" %>
<div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
            <span class="icofont-close js-menu-toggle"></span>
        </div>
    </div>
    <div class="site-mobile-menu-body"></div>
</div>

<nav class="site-nav">
    <div class="container">
        <div class="site-navigation">
            <a href="vol" class="logo m-0">Liste vol <span class="text-primary">.</span></a>
            <a href="listeReservation" class="logo m-0">Liste reservation <span class="text-primary">.</span></a>
        </div>
    </div>
</nav>   

<div class="hero">
    <div class="container">
        <div class="col-lg-7">
            <div class="intro-wrap">
                <div class="row">
                    <div class="col-12">
                        <h2>Liste des réservations</h2>
                        <% if (erreur != null) { %>
                            <div class="alert alert-danger">
                                <%= erreur %>
                            </div>
                        <% } %>
                        <div class="table-container">
                            <table class="table table-bordered table-striped">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>ID Réservation</th>
                                        <th>Date de réservation</th>
                                        <th>Prix total</th>
                                        <th>Vol</th>
                                        <th>Sièges Business</th>
                                        <th>Sièges Éco</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        for (Reservation reservation : reservations) {
                                    %>
                                        <tr>
                                            <td><%= reservation.getIdReservation() %></td>
                                            <td><%= reservation.getDateReservation() %></td>
                                            <td><%= reservation.getPrixTotal() %></td>
                                            <td><a href="detail_vol?idVol=<%= reservation.getVol().getIdVol() %>"><%= reservation.getVol().getIdVol() %></a></td>
                                            <td><%= reservation.getSiegeBusiness() %></td>
                                            <td><%= reservation.getSiegeEco() %></td>
                                            <td>
                                                <div class="d-flex justify-content-center">
                                                    <a class="btn btn-success btn-sm" href="update_reservation?id=<%= reservation.getIdReservation() %>">Modifier</a>
                                                    <a class="btn btn-danger btn-sm" href="annuler?idReservation=<%= reservation.getIdReservation() %>">Annule</a>
                                                </div>
                                            </td>
                                        </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    table {
        width: 100%;
        background-color: white;
        max-width: 1800px; 
        margin: 0 auto; 
    }

    h2 {
        text-align: center;
    }

    th, td {
        padding: 15px;
        text-align: center;
        white-space: nowrap;
    }

    th {
        background-color: #343a40;
        color: white;
    }

    td {
        background-color: white;
    }

    td button {
        margin: 0 5px;
    }

    .site-navigation {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .table-container {
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 20px auto;
        padding: 20px;
        width: 100%;
        height: 100%;
    }

</style>
<%@ include file="part/footer.jsp" %>