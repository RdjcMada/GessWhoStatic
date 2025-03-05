<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="part/header.jsp" %>

<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="hero hero-inner">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 mx-auto text-center">
                            <div class="intro-wrap">
                                <h1 class="mb-0">Réservation Id ${reservation.idReservation}</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
                <form class="contact-form bg-white shadow-lg rounded-lg p-4" method="post" action="${pageContext.request.contextPath}/annuler">
                    <input type="hidden" name="idReservation" value="${reservation.idReservation}">

                    <div class="form-group mb-4">
                        <label class="text-black font-weight-bold" for="dateVol">Date Annulation</label>
                        <input type="datetime-local" class="form-control" id="dateResv" name="dateResv" required>
                    </div>

                    <div class="d-flex gap-2">
                        <button type="submit" class="btn btn-primary">Confirmer l'annulation</button>
                        <a class="btn btn-secondary" href="listeReservation">Annuler</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<style>
    .hero.hero-inner {
        padding: 2rem 0;
        background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        border-radius: 15px;
    }

    .contact-form {
        border-radius: 15px;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
    }

    .form-group {
        margin-bottom: 1.5rem;
    }

    .form-group label {
        margin-bottom: 0.5rem;
        font-size: 1rem;
    }

    .form-group select,
    .form-group input {
        border-radius: 8px;
        padding: 0.75rem;
        border: 1px solid #e0e0e0;
        transition: border-color 0.3s ease;
    }

    .form-group select:focus,
    .form-group input:focus {
        border-color: #0b76e0;
        outline: none;
        box-shadow: 0 0 0 2px rgba(11, 118, 224, 0.2);
    }

    .btn-primary {
        background-color: #0b76e0;
        border: none;
        padding: 1rem 2rem;
        border-radius: 8px;
        transition: background-color 0.3s ease;
    }

    .btn-primary:hover {
        background-color: #0848a1;
    }

    @media (max-width: 768px) {
        .col-lg-8 {
            max-width: 100%;
            padding: 0 1rem;
        }
        
        .hero.hero-inner {
            padding: 1rem 0;
        }
        
        .form-group label {
            font-size: 0.9rem;
        }
        
        .btn-primary {
            width: 100%;
        }
    }
</style>

<%@ include file="part/footer.jsp" %>