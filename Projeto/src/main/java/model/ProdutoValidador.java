package model;

public class ProdutoValidador {
	public static String validar(Produto produto) {
		// Validação dos campos obrigatórios
		if (produto.getNome() == null || produto.getNome().trim().isEmpty()) {
			return "O nome do produto é obrigatório.";
		}
		if (produto.getQuantidade() > 0) {
			return "A quantidade do produto é obrigatória.";
		}
		// Validação do tipo de dado
		
		return null; // Retorna null se não houver erro

	}
}