class Produtos:
 
    # default constructor
    def __init__(nome, descri, precoSemIVA, validade, poluicao, recursosConsumidos, custoManutencao, stock, estado, tipoIVA, modoDeVenda, pesoPorVenda, notasInternas):
        self.idProduto = None
        self.nome = None
        self.descricao = None
        self.tipo = None
        self.tags = None
        self.precoSemIVA = None
        self.validade = None
        self.recursosConsumidos = None
        self.custoManutencao = None
        self.stock = None
        self.disponivelApartirData = None
        self.estado = None
        self.tipoIVA = None
        self.modoDeVenda = None
        self.pesoPorVenda = None
        self.arquivado = None
        self.notasInternasAoFornecedor = None
        self.dataCriacaoTimeStamp = None

    def arquivar():
        pass

    def addTagProduto(tag):
        pass

    def updateNotas(notas):
        pass
    
    def setTipoIVA(tipo):
        pass

    def setApartirData(data):
        pass

    def setStock(valor):
        pass
    
    def setPreco(preco):
        pass
    
    def setDescricao(descri):
        pass
    
    def setTipoProduto(tipoProduto):
        pass
    
    def updateEstado(estado):
        pass

    def updatePoluicao(valor):
        pass

    def getDescricao():
        pass

    def getTipoIVA():
        pass

    def getApartirData():
        pass

    def getStock():
        pass

    def getPreco():
        pass

    def getModo():
        pass

    def getNotasInternas():
        pass

    def getDataCriacao():
        pass

    def getcustoManutencao():
        pass

    def getRecursosConsumidos():
        pass

    def remTagProduto(tag):
        pass

    def toString():
        pass
