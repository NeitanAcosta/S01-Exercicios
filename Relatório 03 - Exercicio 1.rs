use std::io;

fn verificar_senha(senha: &str) -> bool {
    let mut numeros = 0;
    let mut maiuscula = false;

    if senha.len() < 10 {
        return false;
    }

    for c in senha.chars() {
        if c.is_digit(10) {
            numeros += 1;
        }
        if c.is_ascii_uppercase() {
            maiuscula = true;
        }
    }

    numeros >= 2 && maiuscula
}

fn main() {
    loop {
        let mut senha = String::new();

        println!("Digite uma senha:");
        io::stdin().read_line(&mut senha).unwrap();

        let senha = senha.trim();

        if verificar_senha(senha) {
            println!("Senha valida, seja bem vindo!");
            break;
        } else {
            println!("Senha invalida, tente novamente.");
        }
    }
}