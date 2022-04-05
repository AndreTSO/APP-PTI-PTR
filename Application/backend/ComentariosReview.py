from datetime import datetime
class ComentariosReviews:
 
    # default constructor
    def __init__(self, id, comentario, estrelas, nif):
        self.id = id
        self.comentario = comentario
        self.estrelas = estrelas
        self.nifConsumidor = nif
        self.estado = "ativo"
        self.data = datetime.date(datetime.now())

    def remComentario(self, idComentario, nifConsumidor):
        pass

    def setEstado(self, estado):
        pass
    
