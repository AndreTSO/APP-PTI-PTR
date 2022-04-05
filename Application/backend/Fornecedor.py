class Fornecedor:
 
    # default constructor
    def __init__(self):
        self.descricao = None
        self.nomeEmpresa = None
        self.categoriaProdutos = None
        self.consumo_de_recursos = None
        self.poluicao_gerada = None
        
        self.encomendas = None
        self.registoSaida = None
        self.webSite = None
        self.periodoXDiasparaCancelar = None
        
    def setDescricao(descricao):
        pass

    def setNomeEmpresa(nome):
        pass

    def setCategoria(categoria):
        pass

    def setConsumo(consumo):
        pass
    
    def setWebSites(website):
        pass
    
    def setPeriodoXDias(dias):
        pass

    def addPoluicaoGerada(valor):
        pass

    def addEncomenda(encomendaID):
        pass

    def getNomeEmpresa():
        return self.nomeEmpresa

    def getCategoria():
        return self.categoriaProdutos

    def getPoluicao():
        return self.poluicao_gerada

    def getListaEncomendas():
        return sef.encomendas

    def getWebSite():
        return self.webSite
