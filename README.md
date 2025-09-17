# 2025-2 iOS 프로그래밍 수업 3주차 과제  
**DatePicker Alarm 만들기** 
---

## 알람 시 (화면이 빨간색 표시)
<img width="300" alt="Simulator Screenshot - Alarm ON" src="https://github.com/user-attachments/assets/7a8e9f1a-d532-4ea3-9b89-92f8cabe1dc9" />

---

## 알람 이외 (화면이 흰색 표시)
<img width="300" alt="Simulator Screenshot - Alarm OFF" src="https://github.com/user-attachments/assets/17b46311-497b-4355-b560-c8d9e7ca0ee1" />

---

## 개인 공부 메모

### 🔹 `alarmTime`을 `let alarm`으로 바꿔 쓰는 이유
- `alarmTime`은 `Date?` (옵셔널) → **nil일 수 있음**  
- `if let alarm = alarmTime { ... }` 구문을 사용해서  
  옵셔널을 안전하게 **non-optional**로 변환 후 사용

---

### 🔹 `HH` 와 `hh`
- `HH` → 24시간 형식 
- `hh` → 12시간 형식 (AM/PM 구분 필요)

---

### 🔹 `?`와 `!`

- `?` : **옵셔널 타입**  
  - 값이 들어 있을 수도 있고, `nil`일 수도 있음  
  - 사용 예시:  
    ```swift
    var name: String? = nil
    name = "Hong"
    if let n = name {
        print(n) // if let 을 통해 값이 있을 때만 꺼내 사용 (안전하게 언래핑)
    }
    ```
    
    - **사용 시점:** 값이 **절대 nil이 아님이 확실할 때**만 사용 

- `!` : **강제 언래핑(Force Unwrap)**  
  - 옵셔널에서 **무조건 값을 꺼냄**  
  - 값이 `nil`이면 **런타임 오류 발생**  
  - 사용 예시:  
    ```swift
    var age: Int? = 20
    print(age!)  // 20
    age = nil
    // print(age!)  // ❌ 크래시
    ```
    
  - 옵셔널을 반드시 값으로 써야 하는데, 오류 확인을 위해 일부러 crash 내고 싶을 때도 사용  
