use std::io;

fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
    let npt = (nota1 + nota2) / 2.0;
    let media_final = (npt * 0.7) + (nota3 * 0.3);

    if npt >= 60.0 && nota3 >= 60.0 {
        println!("Aprovado! Parabens!");
    } else {
        println!("Reprovado.");
    }

    media_final
}

fn main() {
    let mut n1 = String::new();
    let mut n2 = String::new();
    let mut n3 = String::new();

    println!("Digite a NP1:");
    io::stdin().read_line(&mut n1).unwrap();

    println!("Digite a NP2:");
    io::stdin().read_line(&mut n2).unwrap();

    println!("Digite a NPL:");
    io::stdin().read_line(&mut n3).unwrap();

    let n1: f64 = n1.trim().parse().unwrap();
    let n2: f64 = n2.trim().parse().unwrap();
    let n3: f64 = n3.trim().parse().unwrap();

    let media = calcular_media(n1, n2, n3);

    println!("Media final: {:.2}", media);
}