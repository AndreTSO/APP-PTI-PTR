# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class PtrArmazemfornecedor(models.Model):
    idarmazemfornecedor = models.AutoField(db_column='idArmazemFornecedor', primary_key=True)  # Field name made lowercase.
    idfornecedor = models.IntegerField(db_column='idFornecedor')  # Field name made lowercase.
    nome = models.CharField(max_length=50)
    morada = models.CharField(max_length=150)
    distrito = models.SmallIntegerField()
    concelho = models.SmallIntegerField()
    codigopostal = models.CharField(db_column='codigoPostal', max_length=8)  # Field name made lowercase.
    customanutencao = models.FloatField(db_column='custoManutencao')  # Field name made lowercase.
    estado = models.CharField(max_length=20)
    referigeracao = models.IntegerField()
    poluicaogerada = models.FloatField(db_column='poluicaoGerada')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ptr_armazemfornecedor'


class PtrArtigossubencomenda(models.Model):
    idartigossubencomenda = models.AutoField(db_column='idArtigosSubEncomenda', primary_key=True)  # Field name made lowercase.
    idsubencomenda = models.IntegerField(db_column='idSubEncomenda')  # Field name made lowercase.
    idpodutoarmazem = models.IntegerField(db_column='idPodutoArmazem')  # Field name made lowercase.
    nome = models.CharField(max_length=120)
    descricao = models.CharField(max_length=250)
    quantidade = models.SmallIntegerField()
    valorartigo = models.FloatField(db_column='valorArtigo')  # Field name made lowercase.
    poluicao = models.FloatField()

    class Meta:
        managed = False
        db_table = 'ptr_artigossubencomenda'


class PtrBasestransportador(models.Model):
    idbase = models.AutoField(db_column='idBase', primary_key=True)  # Field name made lowercase.
    idtransportador = models.IntegerField(db_column='idTransportador')  # Field name made lowercase.
    nome = models.CharField(max_length=30)
    morada = models.CharField(max_length=250)
    distrito = models.SmallIntegerField()
    concelho = models.SmallIntegerField()
    codigopostal = models.CharField(db_column='codigoPostal', max_length=8)  # Field name made lowercase.
    customanutencao = models.FloatField(db_column='custoManutencao')  # Field name made lowercase.
    poluicaogerada = models.FloatField(db_column='poluicaoGerada')  # Field name made lowercase.
    estado = models.PositiveIntegerField()
    conselho = models.SmallIntegerField()

    class Meta:
        managed = False
        db_table = 'ptr_basestransportador'
        unique_together = (('idbase', 'idtransportador'),)


class PtrCesto(models.Model):
    idlinha = models.AutoField(db_column='idLinha', primary_key=True)  # Field name made lowercase.
    iduser = models.IntegerField(db_column='idUser')  # Field name made lowercase.
    idartigo = models.IntegerField(db_column='idArtigo')  # Field name made lowercase.
    quantidade = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'ptr_cesto'


class PtrComentariosreview(models.Model):
    idcomentario = models.AutoField(db_column='idComentario', primary_key=True)  # Field name made lowercase.
    iduser = models.IntegerField(db_column='idUser')  # Field name made lowercase.
    idproduto = models.IntegerField(db_column='idProduto')  # Field name made lowercase.
    comentario = models.CharField(max_length=250, blank=True, null=True)
    estrelas = models.IntegerField()
    estado = models.CharField(max_length=20)
    data = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'ptr_comentariosreview'


class PtrConcelho(models.Model):
    id = models.SmallAutoField(primary_key=True)
    district = models.PositiveIntegerField()
    name = models.CharField(max_length=60)

    class Meta:
        managed = False
        db_table = 'ptr_concelho'


class PtrDistrict(models.Model):
    id = models.PositiveIntegerField(primary_key=True)
    name = models.CharField(unique=True, max_length=30)

    class Meta:
        managed = False
        db_table = 'ptr_district'


class PtrEncomenda(models.Model):
    idencomenda = models.AutoField(db_column='idEncomenda', primary_key=True)  # Field name made lowercase.
    refencomenda = models.CharField(db_column='refEncomenda', max_length=8)  # Field name made lowercase.
    idcliente = models.IntegerField(db_column='idCliente', blank=True, null=True)  # Field name made lowercase.
    nome = models.CharField(max_length=20)
    sobrenome = models.CharField(db_column='sobreNome', max_length=30)  # Field name made lowercase.
    email = models.CharField(max_length=255)
    telefone = models.IntegerField()
    nif = models.IntegerField(blank=True, null=True)
    morada = models.CharField(max_length=255)
    codigopostal = models.CharField(db_column='codigoPostal', max_length=8)  # Field name made lowercase.
    distrito = models.SmallIntegerField()
    concelho = models.SmallIntegerField()
    dataencomenda = models.DateTimeField(db_column='dataEncomenda')  # Field name made lowercase.
    estadoencomenda = models.PositiveIntegerField(db_column='estadoEncomenda')  # Field name made lowercase.
    poluicaototalgerada = models.FloatField(db_column='poluicaoTotalGerada', blank=True, null=True)  # Field name made lowercase.
    mensagemadicional = models.CharField(db_column='mensagemAdicional', max_length=400, blank=True, null=True)  # Field name made lowercase.
    nomeficheirofatura = models.IntegerField(db_column='nomeFicheiroFatura', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ptr_encomenda'


class PtrEstados(models.Model):
    idestado = models.AutoField(db_column='idEstado', primary_key=True)  # Field name made lowercase.
    tipo = models.CharField(max_length=10)
    estado = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'ptr_estados'


class PtrFornecedor(models.Model):
    idfornecedor = models.AutoField(db_column='idFornecedor', primary_key=True)  # Field name made lowercase.
    descricao = models.TextField()
    nomeempresa = models.CharField(db_column='nomeEmpresa', max_length=200)  # Field name made lowercase.
    categoriaprodutos = models.CharField(db_column='categoriaProdutos', max_length=200)  # Field name made lowercase.
    website = models.CharField(db_column='webSite', max_length=200)  # Field name made lowercase.
    periodoxdiascancelar = models.IntegerField(db_column='PeriodoXDiasCancelar')  # Field name made lowercase.
    poluicaogerada = models.FloatField(db_column='poluicaoGerada')  # Field name made lowercase.
    registosaida = models.FloatField(db_column='registoSaida')  # Field name made lowercase.
    consumorecursos = models.FloatField(db_column='ConsumoRecursos')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ptr_fornecedor'


class PtrImgProduto(models.Model):
    idproduto = models.IntegerField(db_column='idProduto', primary_key=True)  # Field name made lowercase.
    idimagem = models.IntegerField(db_column='idImagem')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ptr_img_produto'
        unique_together = (('idproduto', 'idimagem'),)


class PtrPreferencias(models.Model):
    iduser = models.IntegerField(db_column='idUser')  # Field name made lowercase.
    idartigo = models.IntegerField(db_column='idArtigo', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ptr_preferencias'
        unique_together = (('idartigo', 'iduser'),)


class PtrProduto(models.Model):
    idproduto = models.AutoField(db_column='idProduto', primary_key=True)  # Field name made lowercase.
    idfornecedor = models.IntegerField(db_column='idFornecedor')  # Field name made lowercase.
    nome = models.CharField(max_length=200)
    descricao = models.CharField(max_length=2000)
    tipo = models.CharField(max_length=30)
    tags = models.CharField(max_length=100)
    precosemiva = models.FloatField(db_column='precoSemIva')  # Field name made lowercase.
    recursosconsumidos = models.FloatField(db_column='recursosConsumidos')  # Field name made lowercase.
    customanutencao = models.FloatField(db_column='custoManutencao')  # Field name made lowercase.
    estado = models.PositiveIntegerField()
    tipoiva = models.IntegerField(db_column='tipoIVA')  # Field name made lowercase.
    mododevenda = models.IntegerField(db_column='modoDeVenda')  # Field name made lowercase.
    pesoporvenda = models.FloatField(db_column='pesoPorVenda', blank=True, null=True)  # Field name made lowercase.
    arquivado = models.IntegerField()
    notasinternasaofornecedor = models.CharField(db_column='notasInternasAoFornecedor', max_length=200)  # Field name made lowercase.
    datacriacaotimestamp = models.DateField(db_column='dataCriacaoTimeStamp')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ptr_produto'


class PtrProdutoArmazem(models.Model):
    idline = models.IntegerField()
    idproduto = models.IntegerField(db_column='idProduto')  # Field name made lowercase.
    idarmazemfornecedor = models.IntegerField(db_column='idArmazemFornecedor')  # Field name made lowercase.
    validade = models.DateField()
    stock = models.IntegerField()
    quantreservada = models.IntegerField(db_column='quantReservada')  # Field name made lowercase.
    disponivelapartirdata = models.DateField(db_column='disponivelApartirData')  # Field name made lowercase.
    estado = models.PositiveIntegerField()

    class Meta:
        managed = False
        db_table = 'ptr_produto_armazem'


class PtrServico(models.Model):
    idservico = models.AutoField(db_column='idServico', primary_key=True)  # Field name made lowercase.
    matriculaveiculo = models.CharField(db_column='matriculaVeiculo', max_length=12)  # Field name made lowercase.
    foipago = models.IntegerField(db_column='foiPago')  # Field name made lowercase.
    custofrete = models.IntegerField(db_column='custoFrete')  # Field name made lowercase.
    pesodacarga = models.FloatField(db_column='pesoDaCarga')  # Field name made lowercase.
    estado = models.PositiveIntegerField()
    data = models.DateField()
    moradacarga = models.CharField(db_column='moradaCarga', max_length=150)  # Field name made lowercase.
    distritocarga = models.SmallIntegerField(db_column='distritoCarga')  # Field name made lowercase.
    conselhocarga = models.SmallIntegerField(db_column='conselhoCarga')  # Field name made lowercase.
    moradadescarga = models.CharField(db_column='moradaDescarga', max_length=150)  # Field name made lowercase.
    distritodescarga = models.SmallIntegerField(db_column='distritoDescarga')  # Field name made lowercase.
    conselhodescarga = models.SmallIntegerField(db_column='conselhoDescarga')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ptr_servico'


class PtrSubencomenda(models.Model):
    idsubencomenda = models.AutoField(db_column='idSubEncomenda', primary_key=True)  # Field name made lowercase.
    idencomendapai = models.IntegerField(db_column='idEncomendaPai')  # Field name made lowercase.
    estadosubencomenda = models.PositiveIntegerField(db_column='estadoSubEncomenda')  # Field name made lowercase.
    poluicaogerada = models.FloatField(db_column='poluicaoGerada')  # Field name made lowercase.
    idfornecedor = models.IntegerField(db_column='idFornecedor')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ptr_subencomenda'


class PtrTransportador(models.Model):
    idusernif = models.AutoField(db_column='idUserNif', primary_key=True)  # Field name made lowercase.
    nomeempresa = models.CharField(db_column='nomeEmpresa', max_length=100)  # Field name made lowercase.
    nomerepresentante = models.CharField(db_column='nomeRepresentante', max_length=30)  # Field name made lowercase.
    sedemorada = models.CharField(db_column='sedeMorada', max_length=120)  # Field name made lowercase.
    sedecodigopostal = models.CharField(db_column='sedeCodigoPostal', max_length=8)  # Field name made lowercase.
    distrito = models.SmallIntegerField()
    concelho = models.SmallIntegerField()
    contacto = models.IntegerField()
    garantiaentregaxhoras = models.IntegerField(db_column='garantiaEntregaXHoras')  # Field name made lowercase.
    website = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'ptr_transportador'


class PtrUserregistado(models.Model):
    nif = models.AutoField(primary_key=True)
    nome = models.CharField(max_length=20)
    sobrenome = models.CharField(db_column='sobreNome', max_length=30)  # Field name made lowercase.
    genero = models.CharField(max_length=1)
    email = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    morada = models.CharField(max_length=255)
    codigopostal = models.CharField(db_column='codigoPostal', max_length=8)  # Field name made lowercase.
    distrito = models.SmallIntegerField()
    concelho = models.SmallIntegerField()
    datanascimento = models.DateField(db_column='dataNascimento')  # Field name made lowercase.
    estadoconta = models.IntegerField(db_column='estadoConta')  # Field name made lowercase.
    dataregistotimestamp = models.DateTimeField(db_column='dataRegistoTimeStamp')  # Field name made lowercase.
    tipodeconta = models.IntegerField(db_column='tipoDeConta')  # Field name made lowercase.
    contato = models.IntegerField()
    apikey = models.CharField(db_column='apiKey', max_length=50)  # Field name made lowercase.
    termoseservicos = models.IntegerField(db_column='termosEServicos')  # Field name made lowercase.
    observacoes = models.TextField()
    anuncios = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'ptr_userregistado'

    def __str__(self):
        return "NIF: "+str(self.nif)+" Nome: "+ self.nome + "Email: "+ self.email
	
    def getName(self):
        return self.nome

    def getEmail(self):
        return self.email

    def getIdentificador(self):
        return self.nif


class PtrVeiculostransportador(models.Model):
    idveiculo = models.AutoField(db_column='idVeiculo', primary_key=True)  # Field name made lowercase.
    idbasetransportador = models.IntegerField(db_column='idBaseTransportador')  # Field name made lowercase.
    matricula = models.CharField(unique=True, max_length=12)
    anodoveiculo = models.DateField(db_column='anoDoVeiculo')  # Field name made lowercase.
    tipoveiculo = models.CharField(db_column='tipoVeiculo', max_length=20)  # Field name made lowercase.
    marca = models.CharField(max_length=20)
    consumoporcemkm = models.FloatField(db_column='consumoPorCemKm')  # Field name made lowercase.
    poluicaoporcemkm = models.FloatField(db_column='poluicaoPorCemKm')  # Field name made lowercase.
    tipodecombustivel = models.CharField(db_column='tipoDeCombustivel', max_length=20)  # Field name made lowercase.
    cargamaxima = models.FloatField(db_column='cargaMaxima')  # Field name made lowercase.
    custoporhora = models.FloatField(db_column='custoPorHora')  # Field name made lowercase.
    estado = models.PositiveIntegerField()
    frigorifico = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'ptr_veiculostransportador'
