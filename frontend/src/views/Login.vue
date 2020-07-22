<template>
 <body class="body-intro">
   
 
  <main class="main">
    <form class="cadre w-50 m-auto">
      <div class="container ">
        <div class="form-group ">
          <label for="inputemail ">📧 Votre e-mail</label>
          <input type="text" class="form-control" id="inputemail" v-model="dataLogin.email" />
        </div>
        <div class="form-group ">
          <label for="inputPassword">🔒 Votre mot de passe</label>
          <input  type="password" class="form-control" id="inputPassword" v-model="dataLogin.password" />
        </div>
        <small> ◾ Vous n'avez pas encore de compte ? <router-link class="redirection-signup" to="/signup">Alors enregistrez-vous ‼</router-link> ◾ </small> <br>
        <button @click.prevent="logIn" type="submit" class="btn btn-danger mb-3 mt-3">Se connecter 👋</button>
      </div>
    </form>
    <modale v-bind:revele="revele" v-bind:toggleModale="toggleModale"></modale>
  </main>
</body>
</template>

<script>
//import de la bibliothèque et d'axios pour les requêtes
import axios from "axios";
import { mapState } from "vuex";
// import du component Modale pour l'alerte du mot de passe ou email incorrect
import modale from "../components/modale"
export default {
  name: "SignUp",
  data() {
    return {
      dataLogin: {
        email: null,
        password: null
      },
      msg: "",
      revele: false
    };
  },
  components : {
    'modale': modale
  },
  computed: {
    ...mapState(["user"])
  },
  methods: {
    // fonction modale qui revele ou non la modale si il y a une erreur
    toggleModale: function(){
      this.revele = !this.revele
    },
    // requête pour connecter l'user déja existant
    logIn() {
      if (
        this.dataLogin.email !== null || this.dataLogin.password !== null 
      ) {
        axios
          .post("http://localhost:3000/api/user/login", this.dataLogin)
          .then(response => {
            localStorage.setItem('token',response.data.token)
            this.$router.push({ path: 'Wall' })
          })
          .catch(error => { 
            console.log(error)
            this.revele = !this.revele
            })
          
      } else {
        console.log("oops !");
      }
    }
  }
};
</script>

<style scope>
.cadre{
  font-family: IBMPlexSans,sans-serif;
    font-size: 14px;
    font-weight: 600;
    letter-spacing: .5px;
    line-height: 32px;
    color: #fff;
    display: inline-block;
    border: none;
    border-radius: 4px;
    text-align: center;
    background: #0079d3;
    text-transform: uppercase;
    cursor: pointer;
    line-height: unset;
    height: 35px;
    width: 155px;
    min-width: 155px;
    background-color: #fff;
    color: #0079d3;
    border: 1px solid #0079d3;
    display: block;
    height: auto;
    margin: 8px 0;
    padding: 12px 28px;
    width: 100%;
}
.btn{
       font-family: IBMPlexSans,sans-serif;
    font-size: 14px;
    font-weight: 600;
    letter-spacing: .5px;
    line-height: 32px;
    color: #fff;
    display: inline-block;
    border: none;
    border-radius: 4px;
    text-align: center;
    background: #0079d3;
    text-transform: uppercase;
    cursor: pointer;
    line-height: unset;
    height: 35px;
    width: 155px;
    background-color: #fff;
    color: #0079d3;
    border: 1px solid #0079d3;
    display: block;
    height: auto;
    margin: 8px 0;
    padding: 12px 28px;
    width: 97%;
}
.main{
  margin-top: 16%;
  text-align: center;
}
.redirection-signup{
  color: #fd2d01;
  text-decoration: none;
}
.redirection-signup:hover{
  color: #fd2d01;
}
.body-intro{
  margin-top: 25%;
}
</style>