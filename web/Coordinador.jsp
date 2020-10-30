<%-- 
    Document   : Coordinador
    Created on : Oct 30, 2020, 9:03:14 AM
    Author     : luisbonilla
--%>

<%@page import="com.model.Proyecto"%>
<%@page import="com.dao.DaoProyecto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <title>Empleados</title>
        
        <script Language="JavaScript">
            function cargar(codigo, nombre, genero, intereses, edad, direccion, cargo, departamento){
                document.frmEmpleado.txtCodigo.value=codigo;
                document.frmEmpleado.txtNombre.value=nombre;
                document.frmEmpleado.rGenero.value=genero;
                var cadena = intereses.split(" ");
                
                document.getElementById("TV").checked = false;
                document.getElementById("Fútbol").checked = false;
                document.getElementById("Fotografía").checked = false;
                
                for (i in cadena) {
                    if(cadena[i]==="TV"){
                        document.getElementById("TV").checked = true;
                    }
                    if(cadena[i]==="Fútbol"){
                        document.getElementById("Fútbol").checked = true;
                    }
                    if(cadena[i]==="Fotografía"){
                       document.getElementById("Fotografía").checked = true;
                    }
                }
                
                document.frmEmpleado.txtEdad.value=edad;
                document.frmEmpleado.txtCargo.value=cargo;
                document.frmEmpleado.txtDireccion.value=direccion;
                document.frmEmpleado.selectDepa.value=departamento;
            }
            
        </script>
        
        <%
            if(request.getSession().getAttribute("msj")!= null){
        %>
        <script Language="JavaScript">
            alert('<%= request.getSession().getAttribute("msj") %>');
        </script>
        <%
            }
        %>
    </head>
    <%
//        DaoEmpleado daoEmp = new DaoEmpleado();
        DaoProyecto daoP = new DaoProyecto();
//        Empleado emp = new Empleado();
    %>
    <body>
        <div class="container">

            <div class="row justify-content-center mt-5 pt-5">

                <div class="col-md-7">

                    <h1 class="display-4">Formulario Empleado</h1>

                    <hr class="bg-info" />

                    <p class="pb-0 mb-0">Ingrese información del empleado</p>

                    <p class="text-danger pt-0 mt-0">*Campos obligatorios</p>

                    <form action="procesarEmpleado" method="post" name="frmEmpleado">

                        <div class="row form-group">

                            <label for="txtCodigo" class="col-form-label col-md-4">Código:</label>

                            <div class="col md-8">

                                <input type="text" name="txtCodigo" id="txtCodigo" class="form-control" />

                            </div>

                        </div>

                        <div class="row form-group">

                            <label for="txtNombre" class="col-form-label col-md-4">Nombre:</label>

                            <div class="col md-8">

                                <input type="text" name="txtNombre" id="txtName" class="form-control" />

                            </div>

                        </div>
                        
                        
                        <div class="row form-group">

                            <label for="rGenero" class="col-form-label col-md-4">Género:</label>

                            <div class="col md-8 form-check form-check-inline">

                                <label class="form-label-check ml-2">

                                    <input type="radio" class="form-check-input ml-2" name="rGenero" value="Masculino" checked/>
                                    
                                    Masculino

                                </label>

                                <label class="form-label-check mr-3">

                                    <input type="radio" class="form-check-input ml-2" name="rGenero" value="Femenino" />

                                    Femenino

                                </label>

                            </div>

                        </div>
                        
                        <div class="row form-group">

                            <label for="chIntereses" class="col-form-label col-md-4">Intereses:</label>

                            <div class="col md-8 form-check form-check-inline ml-2">
                                
                                    <input type="checkbox" class="form-check-input ml-2" id="TV" name="TV" value="TV">
                                    <label class="form-check-label" for="TV">TV</label>
                                
                                    <input type="checkbox" class="form-check-input ml-2" id="Fútbol" name="Futbol" value="Fútbol">
                                    <label class="form-check-label" for="Fútbol">Fútbol</label>
                                
                                    <input type="checkbox" class="form-check-input ml-2" id="Fotografía" name="Fotografia" value="Fotografía">
                                    <label class="form-check-label" for="Fotografía">Fotografía</label>
                                
                            </div>

                        </div>
                        
                        <div class="row form-group">

                            <label for="txtEdad" class="col-form-label col-md-4">Edad:</label>

                            <div class="col md-8">

                                <input type="number" name="txtEdad" id="txtEdad" class="form-control" />

                            </div>

                        </div>
                        
                        <div class="row form-group">

                            <label for="txtDireccion" class="col-form-label col-md-4">Dirección:</label>

                            <div class="col md-8">
                                
                                <textarea rows="3" class="form-control" id="txtDireccion" name="txtDireccion"></textarea>

                            </div>

                        </div>
                        
                        <div class="row form-group">

                            <label for="txtCargo" class="col-form-label col-md-4">Cargo:</label>

                            <div class="col md-8">
                                
                                <input type="text" name="txtCargo" id="txtCargo" class="form-control" />

                            </div>

                        </div>
                        

                        <div class="row form-group">

                            <label for="selectDepa" class="col-form-label col-md-4">Departamento:</label>

                            <div class="col md-8">



                                <select class="form-control" id="selectDepa" name="selectDepa">

                                    <%
                                        List<Proyecto> listaP = daoP.mostrarProyectos();
                                        for(Proyecto p : listaP){
                                        
                                    %>

                                    <option value="<%=p.getCodigoProyecto()%>"><%=p.getNombre()%></option>

                                    <%
                                        }
                                    %>

                                </select>

                            </div>

                        </div>



                        <div class="row form-group">

                            <div class="col-12 align-center">



                                <button class="btn btn-success mr-2 align-center" name="btnInsertar">Insertar</button>

                                <button class="btn btn-info mr-2 align-center" name="btnLimpiar" type="reset">Limpiar</button>

                                <button class="btn btn-danger mr-2 align-center" name="btnEliminar" onclick="return confirm('¿Desea eliminar el producto?')">Eliminar</button>

                                <button class="btn btn-warning mr-2 align-center" name="btnModificar" onclick="return confirm('¿Desea modificar el producto?')">Modificar</button>

                            </div>

                        </div>

                    </form>

                </div>

            </div>

            <hr>
            <table class="table">
                <thead class="bg-dark text-white">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Género</th>
                        <th scope="col">Intereses</th>
                        <th scope="col">Edad</th>
                        <th scope="col">Dirección</th>
                        <th scope="col">Cargo</th>
                        <th scope="col">Departamento</th>
                        <th scope="col">Seleccionar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
//                        List<Empleado> lst = daoEmp.mostrarEmpleado();
//                        for(Empleado e:lst){
                    %>
                    <tr>

                    </tr>
                    <%
//                        }
                    %>
                </tbody>
            </table>

        </div>

        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
       <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
       <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        -->
    </body>
</html>
