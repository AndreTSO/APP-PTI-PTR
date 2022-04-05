class Encomenda:
    # default constructor
    def __init__(self):
        self.idEncomenda = None
        self.idUtilizadorRegistado = None
        self.listaArtigosID = None
        self.estadoEncomenda = None
        self.dataDaEncomenda = None

    def setEstado(self, estado):
        return self.estadoEncomenda

    def setListaArtigos(self, lista):
        self.listaArtigosID = lista

    def getListaArtigos(self):
        return self.listaArtigosID

    def getProductsMatchFornecedor(self, idFornecedor):
        pass

    def getData(self):
        return self.dataDaEncomenda

    def getEstado(self):
        return self.estadoEncomenda

    def getMoradaDestino():
        pass

    def addRegistoPoluicao(value):
        pass