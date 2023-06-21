<nav class="navbar navbar-expand-lg navbar-dark bg-custom nav-custom">
  <a class="navbar-brand" href="#">NotesApp</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     <!--  <li class="nav-item active">
        <a class="nav-link" href="#">Navbar <span class="sr-only">(current)</span></a>
      </li> -->
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="add.jsp">Add notes</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="show.jsp">Show notes</a>
      </li>
      
      
    </ul>
    <form class="form-inline my-2 my-lg-0" method="post" action="logout">
      <a class="btn btn-light my-2 my-sm-0 mr-3" href="Login.jsp" type="submit">Login</a>
      <a class="btn btn-light my-2 my-sm-0 mr-3" href="Register.jsp" type="submit">Register</a>
      <input class="btn btn-light my-2 my-sm-0"   type="submit" value="Log out"></input>
    </form>
  </div>
</nav>