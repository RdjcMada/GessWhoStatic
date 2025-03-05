<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>

<%
List<Vol> vols = (List<Vol>) request.getAttribute("vols");
List<Ville> villes = (List<Ville>) request.getAttribute("villes");
List<Avion> avions = (List<Avion>) request.getAttribute("avions");
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
            <a href="listeReservation" class="logo m-0">Liste réservation <span class="text-primary">.</span></a>
        </div>
    </div>
</nav>

<div class="hero">
    <div class="container">
        <div class="col-lg-7">
            <div class="intro-wrap">
                <div class="row">
                    <div class="col-12">
                        <form class="form">
                            <div class="row mb-2">
                                <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
                                    <select id="ville" class="custom-select form-control" name="idVille">
                                        <option value="0">Choisissez...</option>
                                        <%
                                        for (Ville ville : villes) {
                                        %>
                                            <option value="<%= ville.getIdVille() %>"><%= ville.getNom() %></option>
                                        <%
                                        }
                                        %>
                                    </select>
                                </div>
                                <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-5">
                                    <select id="avion" class="custom-select form-control" name="idAvion">
                                        <option value="0">Choisissez...</option>
                                        <%
                                        for (Avion avion : avions) {
                                        %>
                                            <option value="<%= avion.getIdAvion() %>"><%= avion.getPseudo() %></option>
                                        <%
                                        }
                                        %>
                                    </select>
                                </div>
                                <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-3">
                                    <input type="datetime-local" class="form-control" id="dateDebut" name="dateDebut">
                                </div>
                                <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-3">
                                    <input type="datetime-local" class="form-control" id="dateFin" name="dateFin">
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
                                    <input type="submit" class="btn btn-primary btn-block" value="Search">
                                </div>
                                <div class="col-lg-8">
                                    <label class="control control--checkbox mt-3">
                                        <span class="caption">Save this search</span>
                                        <input type="checkbox" checked="checked" />
                                        <div class="control__indicator"></div>
                                    </label>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-lg-7">
                <div class="intro-wrap">
                    <div class="row">
                        <div class="col-12">
                            <h2>Liste des vols</h2>
                            <% if (erreur != null) { %>
                                <div class="alert alert-danger">
                                    <%= erreur %>
                                </div>
                            <% } %>
                            
                            <a href="form_ajouter" class="btn btn-primary mb-3">Ajouter un vol</a>
                            <div class="table-container">
                                <table class="table table-bordered table-striped">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID Vol</th>
                                            <th>Numéro de vol</th>
                                            <th>Date du vol</th>
                                            <th>ID Ville</th>
                                            <th>ID Avion</th>
                                            <th>Action</th>
                                            <th>Delete/Update</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                        for (Vol vol : vols) {
                                        %>
                                            <tr>
                                                <td><%= vol.getIdVol() %></td>
                                                <td><a href="detail_avion?idVol=<%= vol.getIdVol() %>"><%= vol.getNumeroVol() %></a></td>
                                                <td><%= vol.getDateVol() %></td>
                                                <td><%= vol.getVille().getNom() %></td>
                                                <td><%= vol.getAvion().getPseudo() %></td>
                                                <td>
                                                    <a class="btn btn-primary btn-sm" href="form_reservation?idVol=<%= vol.getIdVol() %>&pseudo=<%= vol.getAvion().getPseudo() %>">Réserver</a>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-center">
                                                        <a class="btn btn-success btn-sm" href="update?id=<%= vol.getIdVol() %>">Update</a>
                                                        <a class="btn btn-danger btn-sm" href="delete?id=<%= vol.getIdVol() %>">Delete</a>
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
