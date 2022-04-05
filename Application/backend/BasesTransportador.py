class BasesTransportador:
 
    # default constructor
    def __init__(self, nome, morada, codigoPostal, idBaseTransportador):
        self.idBaseTransportador = idBaseTransportador
        self.nome = nome
        self.morada = morada
        self.codigoPostal = codigoPostal
        self.custoManutencao = None
        self.poluicaoGerada = None
        self.estado = None
        self.listaVeiculos= None
        
    def remBaseTransportador(self, id):
        pass

    def updateCustoManutencao(self, valor):
        pass

    def addPoluicaoGeradada(self, poluicaoGerada):
        pass

    def setEstado(self, estado):
        self.estado = estado

    def setNome(self, nome):
        self.nome = nome

    def setMorada(self, morada, codigoPostal):
        self.morada = morada
        self.codigoPostal = codigoPostal

    def getEstado(self):
        return self.estado

    def getListaVeiculos(self):
        return self.listaVeiculos

    def getPoluicaoGerada(self):
        return self.poluicaoGerada

    def addVeiculo(veiculo):
        pass

    def remVeiculo(id):
        pass

