<template>
<body class="body-intro">
  <main class="main">
    <form class="cadre w-50 m-auto">
      <div class="container">
        <div class="form-group ">
          <label for="inputEmail">📧 Votre e-mail</label>
          <input type="email" class="form-control" id="inputEmail" v-model="dataSignup.email" />
        </div>
        <div class="form-group">
          <label for="inputUsername">👤 Votre nom d'utilisateur</label>
          <input type="text" class="form-control" id="inputUsername" v-model="dataSignup.username" />
        </div>
        <div class="form-group">
          <label for="inputPassword">🔒 Votre mot de passe</label>
          <input  type="password" class="form-control" id="inputPassword" v-model="dataSignup.password"/>
          <small>Votre mot de passe doit contenir au moins 8 caractères dont 1 majuscule, 1 minuscule et un chiffre</small>
        </div>
        <button @click.prevent="sendSignup" type="submit" class="btn btn-danger mb-3 mt-3">Créer mon compte 👌</button>
      </div>
    </form>
  </main>
</body>
</template>

<script>
//import de la bibliothèque et d'axios pour les requêtes
import { mapState } from "vuex";
import axios from "axios";
export default {
  name: "SignUp",
  data() {
    return {
      dataSignup: {
        username: null,
        email: null,
        password: null
      },
      msg: ""
    };
  },
  computed: {
    ...mapState(["user"])
  },
  methods: {
    // requête pour créer un user, sécurité grâce au regex
    sendSignup() {
       const regexPassword = /((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{8,64})/
      const regexEmail = /^[a-z0-9!#$ %& '*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&' * +/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/g;
      const usernameRegex = /^(?!.*\.\.)(?!.*\.$)[^\W][\w.]{0,29}$/;
      if (
        (this.dataSignup.email !== null || this.dataSignup.username !== null || this.dataSignup.password !== null) &&
        (regexPassword.test(this.dataSignup.password) && regexEmail.test(this.dataSignup.email) && usernameRegex.test(this.dataSignup.username))
      ) {
        axios
          .post("http://localhost:3000/api/user/signup", this.dataSignup)
          .then(response => {
            console.log(response);
            this.$router.push({ path: 'Wall' })
            //Réinitialisation des champs après saisie
            this.dataSignup.email = null;
            this.dataSignup.username = null;
            this.dataSignup.password = null;
          })
          .catch(error => console.log(error));
      } else {
        alert("Désolé, vous n'avez pas rempli les champs correctement ! ");
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
.main{
  margin-top: 10%;
  text-align: center;
}
.body-intro{
  margin-top: 25%;
}
</style>