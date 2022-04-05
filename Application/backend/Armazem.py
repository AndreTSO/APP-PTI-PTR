class Armazem:
 
    # default constructor
    def __init__(self):
        self.nome = None
        self.morada = None
        self.codigoPostal = None
        self.custoManutencao = None
        self.estado = None
        self.refrigeracao = None
        self.poluicaoGerada = None

    def setNome(self, nome):
        self.nome = nome

    def setMorada(self, morada):
        self.morada = morada

    def setCodigoPostal(self, codigoPostal):
        self.codigoPostal = codigoPostal

    def setCustoManutencao(self, custo):
        self.custoManutencao = custo

    def setEstado(self, estado):
        self.estado = estado

    def setRefrigeracao(self, refrigeracao):
        self.refrigeracao = refrigeracao

    def setPoluicaoGerada(self, poluicao):
        self.poluicaoGerada = poluicao

    def getNome(self):
        return self.nome

    def getMorada(self):
        return self.morada

    def getCodigoPostal(self):
        return self.codigoPostal

    def getCustoManutencao(self):
        return self.custoManutencao

    def getEstado(self):
        return self.estado

    def getRefrigeracao(self):
        return self.refrigeracao

    def getPoluicaoGerada(self):
        return self.poluicaoGerada