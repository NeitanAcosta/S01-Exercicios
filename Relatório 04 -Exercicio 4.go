package main

import "fmt"

func verificarLogin(usuario, senha string) bool {
	return usuario == "senha" && senha == "admin"
}

func main() {
	var usuario, senha string

	for {
		fmt.Print("Usuário: ")
		fmt.Scan(&usuario)

		fmt.Print("Senha: ")
		fmt.Scan(&senha)

		if verificarLogin(usuario, senha) {
			fmt.Println("Login bem-sucedido!")
			break
		} else {
			fmt.Println("Usuário ou senha incorretos. Tente novamente.")
		}
	}
}