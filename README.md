# sample swift NSOperationQueue
NSOperationQueue 와 관련 해서 공부해봅니다. 
> 내용은 별거 없습니다. 단순하게 테스트 해보며, 그 과정을 메모해 봅니다. 

- GCD를 사용합시다. 이 것은 공부 겸 해서 시도해 보는 것 입니다. 
- 블로그 : https://magi82.github.io/gcd-01/

# Thread

# RunLoop
- 런루프, 시스템의 입력 이벤트 와 같은 소스에 대한 입력을 처리합니다. 
- NSTimer 도 처리합니다. 
- NSThread 객체 (어플의 메인 스레드에 포함)에는 필요에 따라 NSRunLoop 객체가 자동으로 만들어집니다. 현재 스레드의 실행 루프에 엑세스해야하는 경우 currentRunLoop 클래스 메소드를 사용합니다.
- 현재의 스레드의 문맥에서 실행해 주어야 합니다. 다른 스레드에서 실행하면.. 예기치 않은 결과를 얻을 수 있습니다.

- currentRunLoop : 현재 스레드의 실행 루프를 반환합니다.
- run : receiver를 영구적인 루프? (permanent loop)에 넣습니다. 이때, recever는 모든 입력 소스의 데이터를 처리합니다. 

## 참고 링크
- https://stackoverflow.com/questions/43825263/how-to-exit-a-runloop

# autoreleasepool

# OperationQueue

# Operation

# NSConditionLock
- 특정 조건에 따른 스레드의 잠금/해제 및 설정




