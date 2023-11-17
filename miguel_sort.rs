pub fn miguel_sort(arr: &[u32]) -> Vec<u32> {
    let mut set = vec![false; 2usize.pow(32)];
    arr.into_iter().for_each(|&f| {
        set[f as usize] = true;
    });
    set.into_iter()
        .enumerate()
        .filter(|&(_, b)| b)
        .map(|(i, _)| i as u32)
        .collect()
}

pub fn main() {
    println!("{:?}", min_dist(&[1, 5, 10, 6]));
    println!("{:?}", min_dist(&[1, 5, 7]));
}
