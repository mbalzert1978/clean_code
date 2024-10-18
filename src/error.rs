#[derive(Debug)]
#[cfg_attr(test, derive(PartialEq))]
pub enum Error {
    Generic,
}

impl std::fmt::Display for Error {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Error::Generic => write!(f, "An error occurred"),
        }
    }
}

impl std::error::Error for Error {}
