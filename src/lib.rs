#![no_std]
/// Add locusts to your codebase.
///
/// Note that locusts are not included with this package, you must provide your own.
///
/// # Examples
///
/// ```
/// use locusts::introduce_locusts;
///
/// introduce_locusts();
/// ```
pub fn introduce_locusts() {}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test() {
        introduce_locusts();
    }
}
