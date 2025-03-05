<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.*" %>
<%@ page import="dao.*" %>
<%
List<Ville> villes = (List<Ville>) request.getAttribute("villes");
List<Avion> avions = (List<Avion>) request.getAttribute("avions");
String erreur = (String) request.getAttribute("erreur");
%>
<%@ include file="part/header.jsp" %>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="hero hero-inner">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 mx-auto text-center">
                            <div class="intro-wrap">
                                <h1 class="mb-0">Ajout vol</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
                <form class="contact-form bg-white shadow-lg rounded-lg p-4" method="post" action="<%= request.getContextPath() %>/ajouter">
                    <div class="form-group mb-4">
                        <label class="text-black font-weight-bold" for="ville">Ville</label>
                        <select id="ville" class="custom-select form-control" name="idVille">
                            <% 
                                if (villes != null) {
                                    for (Ville ville : villes) {
                            %>
                                <option value="<%= ville.getIdVille() %>"><%= ville.getNom() %></option>
                            <% 
                                    }
                                }
                            %>
                        </select>
                    </div>

                    <div class="form-group mb-4">
                        <label class="text-black font-weight-bold" for="avion">Avion</label>
                        <select id="avion" class="custom-select form-control" name="idAvion">
                            <% 
                                if (avions != null) {
                                    for (Avion avion : avions) {
                            %>
                                <option value="<%= avion.getIdAvion() %>"><%= avion.getPseudo() %></option>
                            <% 
                                    }
                                }
                            %>
                        </select>
                    </div>

                    <div class="form-group mb-4">
                        <label class="text-black font-weight-bold" for="numeroVol">Numéro de vol</label>
                        <input type="text" class="form-control" id="numeroVol" name="numeroVol" required>
                    </div>

                    <div class="form-group mb-4">
                        <label class="text-black font-weight-bold" for="dateVol">Date du vol</label>
                        <input type="datetime-local" class="form-control" id="dateVol" name="dateVol" required>
                    </div>

                    <div class="form-group mb-4">
                        <label class="text-black font-weight-bold">Prix sièges Business</label>
                        <input type="number" class="form-control" id="siegeBusiness" name="siegeBusiness" step="0.01" min="0">
                    </div>
                    
                    <div class="form-group mb-4">
                        <label class="text-black font-weight-bold">Prix sièges Économique</label>
                        <input type="number" class="form-control" id="siegeEco" name="siegeEco" step="0.01" min="0">
                    </div>

                    <div class="d-flex gap-2">
                      <button type="submit" class="btn btn-primary">Soumettre</button>
                      <a class="btn btn-secondary" href="vol">Annuler</a>
                  </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="part/footer.jsp" %>
