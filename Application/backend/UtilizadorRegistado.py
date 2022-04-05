


class UtilizadorRegistado:
 
    # default constructor
    def __init__(self):
        self.nif = None
        self.nome = None
        self.sobreNome = None
        self.genero = None
        self.email = None
        self.password = None
        self.morada = None
        self.codigoPostal = None
        self.localidade = None
        self.distrito = None
        self.dataNascimento = None
        self.estadoConta = None
        self.dataRegistoTimeStamp = None
        self.tipoDeConta = None
        self.contacto = None
        self.APIKey = None
        self.termosEServicos = None
        self.observacoes = None
        self.autorizarMarktingCatgDasPreferencias = None
        

    def genAPIKey(self):
        pass

    def isAPIKeyValid(self):
        pass

    def getUserIdByEmail(self,email):
        pass

    def getAccountStatus(self):
        pass
    def getTodosOsDados(self):
        pass

    def getTypeAccount(self):
        pass

    def bloquear(self, value):
        pass

    def isBlocked(self):
        pass

    def setTodosOsDados(self, nif, nome, sobreNome, genero, email, password, morada, codigoPostal, local, distrito, dataNascimento, estadoConta, dataRegistoTimeStamp, tipoDeConta, contacto, APIKey, termosEServicos, observacoes, autorizarMCDP):
        pass

    def setObservacoes(self, texto, append):
        pass
    
