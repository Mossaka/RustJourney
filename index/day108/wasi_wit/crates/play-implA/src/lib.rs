wit_bindgen_rust::export!("../../wit/play.wit");
use play::*;

struct Play {}
impl play::Play for Play {
    fn negate(a: Myboolean,) -> Myboolean {
        match a {
            Myboolean::True => Myboolean::False,
            Myboolean::False => Myboolean::True,
        }
    }
}
