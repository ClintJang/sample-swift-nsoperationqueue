# sample swift NSOperationQueue
NSOperationQueue 와 관련 해서 공부해봅니다. 
> 내용은 별거 없습니다. 단순하게 테스트 해보며, 그 과정을 메모해 봅니다. 

- GCD를 사용합시다. 이 것은 공부 겸 해서 시도해 보는 것 입니다. 
- 블로그 : https://magi82.github.io/gcd-01/
- [스레드 프로그래밍 가이드](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Multithreading/Introduction/Introduction.html#//apple_ref/doc/uid/10000057i) : 사용할 수 있는 스레드에 대한 설명? 

# Thread
- Objective-C 메서드를 자체 실행 스레드에서 실행하려는 경우이 클래스를 사용합니다.
- 스레드의 런타임 조건을 모니터링 하기 위한 Operation과 유사한 기능도 지원합니다.

# NSConditionLock
- 특정 조건에 따른 스레드의 잠금/해제 및 설정

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
- Objective-C 코드에서 사용한다면 Swift에서 사용하십시오.

## 참고 링크 
- https://stackoverflow.com/questions/25860942/is-it-necessary-to-use-autoreleasepool-in-a-swift-program

# OperationQueue
- OperationQueue에 추가된 Operation은 Operation 인스턴스는 명시적으로 취소되거나 해당 작업 실행을 완료 할 때까지 해당 Queue에 남아 있습니다.
- NSOperationQueue 클래스는 KVC, KVO를 준수합니다. 
	- 이러한 속성을 원하는대로 관찰하여 응용 프로그램의 다른 부분을 제어 할 수 있습니다. 속성을 관찰하려면 다음 키 경로를 사용하십시오.
	- operations - read-only
	- operationCount - read-only
	- maxConcurrentOperationCount - readable and writable
	- suspended(일시정지) - readable and writable
	- name - readable and writable
- 여러 스레드에서 하나의 NSOperationQueue 객체를 사용하는 것이 안전합니다.
- operation queue는 우선 순위 및 준비 상태에 따라 대기중인 작업 객체를 실행합니다.


# Operation
- 추상 클레스 입니다. 
- 스레드의 런타임 조건을 모니터링하기 위함.
- 하위 클래스를 이용합니다.
	- NSInvocationOperation, BlockOperation
- 일반적으로 작업을 작업 대기열 (OperationQueue 클래스의 인스턴스)에 추가하여 작업을 실행합니다.
- KVC, KVO를 준수합니다. 
	- isCancelled - 읽기 전용
	- isAsynchronous - 읽기 전용
	- isExecuting - 읽기 전용
	- isFinished - 읽기 전용
	- isReady - 읽기 전용
	- dependencies - 읽기 전용
	- queuePriority - 읽고 쓸 수 있습니다.
	- completionBlock - 읽기 및 쓰기 가능
- NSOperation 클래스는 멀티 코어를 인식합니다. 따라서 객체에 대한 액세스를 동기화하기 위해 추가 잠금을 만들지 않고도 여러 스레드에서 NSOperation 객체의 메서드를 호출하는 것이 안전합니다. 이 동작은 일반적으로 작업을 만들고 스레드를 모니터링하는 별도의 스레드에서 실행되기 때문에 필요합니다.
- 잠재적 인 데이터 손상을 방지하려면 작업의 모든 데이터 변수에 대한 액세스를 동기화해야합니다.

# NSInvocationOperation

# BlockOperation