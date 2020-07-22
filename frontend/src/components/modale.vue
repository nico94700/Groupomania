<template>

        <div class="bloc-modale" v-if="revele">

                <div v-on:click="toggleModale" class="overlay"> </div>

                <div class="modale card">
                    <div v-on:click="toggleModale" class="btn-modale btn btn-danger">X</div>
                    <p>⚠ Oups, votre e-mail ou votre mot de passe est incorrect ! Veuillez rééssayer !</p>
                </div>

        </div>


</template>


<script>
export default {
    name: 'Modale',
    props: ['revele', 'toggleModale']
}
</script>



<style scope>
.bloc-modale {
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
.overlay {
    background: rgba(0,0,0,0.5);
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
}
.modale {
    background: #f1f1f1;
    /* color: #333; */
    padding: 80px;
    position: fixed;
    bottom: 40%;
    /* margin: 126%; */
    width: 50%;
    left: 25%;
    right: 50%;
}
.btn-modale{
    position: absolute;
    top: 10px;
    right: 10px;
}
</style>