class Servico:
 
    # default constructor
    def __init__(self):
        self.idServico = None
        self.Data = None
        self.localCarga = None
        self.localDescarga = None
        self.estado = None
        self.pesoDaCarga = None
        self.custoDoFrete = None
        self.foiPago = None
        self.matriculaVeiculo = None
        
    def criarPedido(self, data, localCarga, localDescarga, Peso, Dimensoes):
        pass

    def alterarEstado(self,estado):
        pass

    def atribuirCarro(self,matricula):
        pass

    def estadoPagamento(self):
        pass

    def updatePagamento(self, pagou):
        pass
