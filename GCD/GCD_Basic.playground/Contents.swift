import UIKit

// Queue - Main , Global , Custom

//MARK: - Main Queue

DispatchQueue.main.async {
    //UI Update
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
} // 메인큐의 경우 ui update , 사용자 인터랙션 핸들 관련해서 주로 쓰임

//MARK: - Global Queue
DispatchQueue.global(qos: .userInteractive).async {
    //진짜 핵중요 , 지금 당장 해야 하는 것
}
DispatchQueue.global(qos: .userInitiated).async {
    // 거의 바로 해줘야 할 것 , 사용자가 결과를 기다리고 있음
}
DispatchQueue.global(qos: .default).async {
    // 이건 굳이??
}
DispatchQueue.global().async {
    // 위와 같다 그냥 수행만 해줘라
}
DispatchQueue.global(qos: .utility).async {
    // 시간이 조금 걸리는 일들 , 사용자가 당장 기다리지 않는것 , 네트워크 , 큰파일 불러올때 ??
}
DispatchQueue.global(qos: .background).async {
    // 사용자 한테 당장 인식될 필요가 없는것들 , 뉴스데이터 미리 받기 , 위치 업데이트 , 영상 다운받는 다던지
}
//MARK: - Custom Queue

let concurrentQueue = DispatchQueue(label: "concurrent", qos: .background, attributes: .concurrent)
let serialQueue = DispatchQueue(label: "serial", qos: .background)

// 복잡한 상황

func downloadImageFromServer() -> UIImage {
    // Heavy Task
    return UIImage()
}

func updateUI(image : UIImage) {
    
}
DispatchQueue.global(qos: .background).async {
    // download
    let image = downloadImageFromServer()
    
    // 주로 업데이트 유아이를 해야할경우는 메인큐에서 수행~~ 알잖아
    DispatchQueue.main.async {
        updateUI(image : image)
    }
}

//MARK: - Sync , Async

// Async
print("Async")
DispatchQueue.global(qos: .background).async {
    for i in 0...5 {
        print("😍 \(i)")
    }
}

DispatchQueue.global(qos: .userInteractive).async {
    for i in 0...5 {
        print("😇 \(i)")
    }
}

// Sync
print("Sync")
DispatchQueue.global(qos: .background).sync {
    for i in 0...5 {
        print("😍 \(i)")
    }
}

DispatchQueue.global(qos: .userInteractive).async {
    for i in 0...5 {
        print("😇 \(i)")
    }
}
