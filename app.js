function iniciar(){
    listarFilme();
}

async function listarFilme(){
    var url = `./php/filme_listar.php`;
    var res = await fetch(url).then(resposta => {return resposta.json();});

    console.log(res);

    var tabela = document.getElementById('tabelaFilme');
    var a = '';
    for (var i = 0; i < res.length; i++){
        a = a + `<tr>
                    <td>${res[i].id_filme}</td>
                    <td>${res[i].titulo}</td>
                    <td>${res[i].titulo_original}</td>
                    <td>${res[i].descricao}</td>
                    <td>${res[i].diretor}</td>
                    <td>${res[i].ano_lancamento}</td>
                    <td>
                        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalFilme" onclick="abrirFilme(${res[i].id_filme})">Alterar</button>
                    </td>
                    <td>
                        <button class="btn btn-danger" onclick="excluirFilme(${res[i].id_filme})">Excluir</button>
                    </td>
                </tr>`;
    }
    tabela.innerHTML = a;
}

async function abrirFilme(id_filme){
    var inputIdFilme = document.getElementById('idfilme');
    var inputTitulo = document.getElementById('titulo');
    var inputTituloOriginal = document.getElementById('titulo_original');
    var inputDescricao = document.getElementById('descricao');
    var inputDiretor = document.getElementById('diretor');
    var inputLancamento = document.getElementById('lancamento');

    document.getElementById('tituloFilme').innerHTML = `Alterar o filme ${id_filme}`;
    
    var url = `./php/filme_selecionar.php?id_filme=${id_filme}`;
    var res = await fetch(url).then(resposta => {return resposta.json();});

    inputIdFilme.value = res[0].id_filme;
    inputTitulo.value = res[0].titulo;
    inputTituloOriginal.value = res[0].titulo_original;
    inputDescricao.value = res[0].descricao;
    inputDiretor.value = res[0].diretor;
    inputLancamento.value = res[0].ano_lancamento;
    }


async function alterarFilme(){
    var inputIdFilme = document.getElementById('idfilme');
    var inputTitulo = document.getElementById('titulo');
    var inputTituloOriginal = document.getElementById('titulo_original');
    var inputDescricao = document.getElementById('descricao');
    var inputDiretor = document.getElementById('diretor');
    var inputLancamento = document.getElementById('lancamento');

    url = `./php/filme_alterar.php?id_filme=${inputIdFilme.value}&titulo=${inputTitulo.value}&titulo_original=${inputTituloOriginal.value}&descricao=${inputDescricao.value}&diretor=${inputDiretor.value}&lancamento=${inputLancamento.value}`;
    await fetch(url).then(resposta => {return resposta.json();});

    listarFilme();
}

async function excluirFilme(id_filme){
    if (! confirm('Deseja realmente excluir esse filme?'))
        return;
    var url = `./php/filme_excluir.php?id_filme=${id_filme}`;
    await fetch(url).then(resposta => {return resposta.json() });

    listarFilme();
}

async function inserirFilme(){

    var url01 = `https://ghibliapi.vercel.app/films`;
    var res = await fetch(url01).then(resposta => {return resposta.json();});
    var registro = res.length;

    if (! confirm('A API Studio Ghilbi retornou '+registro+' filmes. Deseja importá-los agora?'))
        return;
    
    for (var i = 0; i < res.length; i++){
        var titulo = res[i].title;
        var titulo_original = res[i].original_title;
        var descricao = res[i].description;
        var diretor = res[i].director;
        var lancamento = res[i].release_date;

        var url02 = `./php/filme_inserir.php?titulo=${titulo}&titulo_original=${titulo_original}&descricao=${descricao}&diretor=${diretor}&lancamento=${lancamento}`;
        await fetch(url02).then(resposta => {return resposta.json();});

        listarFilme();
    }
    inserirLog(registro)
}

async function inserirLog(registro){
    var url = `./php/registrar_log.php?num_registros=${registro}`;
    await fetch(url).then(resposta => {return resposta.json();});
}

async function listarLog(){
    var url = `./php/listar_log.php`;
    var res = await fetch(url).then(resposta => {return resposta.json();});

    console.log(res);

    var tabela = document.getElementById('tabelaLogs');
    var a = '';
    for (var i = 0; i < res.length; i++){
        a = a + `<tr>
                    <td>${res[i].idlog}</td>
                    <td>${res[i].numeroregistros}</td>
                    <td>${res[i].datahora}</td>
                </tr>`;
    }
    tabela.innerHTML = a;
}

async function limparBanco(){
    if (! confirm('Deseja realmente excluir os dados do banco?'))
        return;
    var url = `./php/limpar_banco.php`;
    await fetch(url).then(resposta => {return resposta.json() });

    listarFilme();
}