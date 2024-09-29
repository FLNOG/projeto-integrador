package servlet;

import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Produto;
import model.ProdutoValidador;

import java.io.IOException;

public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProdutoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Resgato os parâmetros do formulário
		String nome = request.getParameter("nome");
		String strQuantidade = request.getParameter("quantidade");
		
		String mensagemErro;
		
		int quantidade = 0;
		try {
			quantidade = Integer.parseInt(strQuantidade);
		} catch(Exception e) {
			mensagemErro = "Somente números na quantidade";
		}
		
		// Passo para o objeto da classe Produto
		Produto objProduto = new Produto(nome, quantidade);
		// Validar o produto com a classe auxiliar (ProdutoValidador)
		mensagemErro = ProdutoValidador.validar(objProduto);
		if (mensagemErro != null) {
			// Se houver erros, redirecionar para página de cadastro com msg de erro
			request.setAttribute("erro", mensagemErro);
		} else {
			// Caso sucesso, redirecionar para a página de cadastro com msg de sucesso
			request.setAttribute("sucesso", "Produto cadastrado com sucesso!");
		}

		// redirecionar para a página de cadastro
		request.getRequestDispatcher("/views/cadastro-produto.jsp").forward(request, response);
	}

}
