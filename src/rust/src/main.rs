use std::time;

fn is_prime(n: i32) -> bool {
    if n < 2 {
        return false;
    }
    let max = (n as f64).sqrt() as i32 + 1;
    for i in 2..max {
        if n % i == 0 {
            return false;
        }
    }
    return true;
}

fn test_prime(n: i32) -> Vec<i32> {
    let mut res = Vec::new();
    let max = 10_i32.pow(n as u32);
    for i in 0..max {
        if is_prime(i) {
            res.push(i);
        }
    }
    return res;
}

fn main() {
    let start = time::Instant::now();
    test_prime(7);
    let elapsed = start.elapsed();
    println!("rust prime10**7: {:?}", elapsed);
}
