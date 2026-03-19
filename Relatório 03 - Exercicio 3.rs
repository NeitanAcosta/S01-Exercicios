use std::io;

fn imprimir_multiplos(numero: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        if i % numero == 0 {
            println!("{}", i);
        }
    }
}

fn main() {
    let mut num = String::new();
    let mut li = String::new();
    let mut ls = String::new();

    println!("Digite o numero:");
    io::stdin().read_line(&mut num).unwrap();

    println!("Digite o limite inferior:");
    io::stdin().read_line(&mut li).unwrap();

    println!("Digite o limite superior:");
    io::stdin().read_line(&mut ls).unwrap();

    let num: i32 = num.trim().parse().unwrap();
    let li: i32 = li.trim().parse().unwrap();
    let ls: i32 = ls.trim().parse().unwrap();

    imprimir_multiplos(num, li, ls);
}