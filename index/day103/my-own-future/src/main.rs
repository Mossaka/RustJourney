use async_std::task;
use std::future::Future;
use std::task::Poll;
use std::thread;
use std::time::Duration;
use std::time::Instant;
struct Delay {
    when: Instant,
}

impl Future for Delay {
    type Output = &'static str;

    fn poll(self: std::pin::Pin<&mut Self>, cx: &mut std::task::Context<'_>) -> Poll<Self::Output> {
        if Instant::now() > self.when {
            Poll::Ready("hello world")
        } else {
            let waker = cx.waker().clone();
            let when = self.when;

            thread::spawn(move || {
                let now = Instant::now();
                if now < when {
                    thread::sleep(when - now);
                }
                waker.wake();
            });

            Poll::Pending
        }
    }
}

// #[tokio::main]
// async fn main() {
//     let when = Instant::now() + Duration::from_millis(2000);
//     let future = Delay { when };

//     let out = future.await;
//     print!("{}", out)
// }

fn main() {
    let when = Instant::now() + Duration::from_millis(2000);
    let future = Delay { when };
    let response = task::block_on(async { future.await });
    print!("{}", response);
}
