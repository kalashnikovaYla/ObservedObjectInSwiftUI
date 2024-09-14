@StateObject 

<img width="1138" alt="Снимок экрана 2024-09-14 в 21 45 01" src="https://github.com/user-attachments/assets/184afa94-1aae-4030-b91f-43a39937d082">

<img width="1138" alt="Снимок экрана 2024-09-14 в 21 46 25" src="https://github.com/user-attachments/assets/5dca2739-5abe-4d22-9883-7901cc4122ff">


@ObservedObject 
- позволяет передать обьект между различными представлениями
<img width="915" alt="Снимок экрана 2024-09-14 в 21 47 28" src="https://github.com/user-attachments/assets/fcdcb58d-26f5-4b2f-acd9-659f87229004">

<img width="969" alt="Снимок экрана 2024-09-14 в 21 50 34" src="https://github.com/user-attachments/assets/e6ce4f57-363f-4e90-aa5f-66ab2c2f9eb7">

@EnvironmentObject 
<img width="969" alt="Снимок экрана 2024-09-14 в 21 53 11" src="https://github.com/user-attachments/assets/452b2fc3-acb8-456c-abf0-b7cf61b0902c">
<img width="652" alt="Снимок экрана 2024-09-14 в 21 53 28" src="https://github.com/user-attachments/assets/8b105e87-d48a-4398-9cb5-40cdf563d093">


### @ObservedObject
- Определение: Используется для отслеживания изменений в объекте, который находится под контролем текущего представления (view).
- Скопление: Обычно передается в представление и ожидается, что будет создан в родительском представлении.
- Применение: Удобно использовать, когда объект данных известен и передан в конкретное представление.
- Пример:
  
  struct MyView: View {
      @ObservedObject var viewModel: MyViewModel

      var body: some View {
          Text(viewModel.someProperty)
      }
  }
  
### @EnvironmentObject
- Определение: Предназначен для доступа к объекту, который хранится в окружающей среде (environment) и доступен для множества представлений.
- Скопление: Необходимо зарегистрировать объект в окружающей среде до его использования в представлении.
- Применение: Удобно использовать для глобальных данных или состояний, которые должны быть доступны множеству дочерних представлений без явной передачи их через иерархию.
- Пример:
  
  class AppEnvironment: ObservableObject {
      @Published var userSettings = UserSettings()
  }

  struct MyView: View {
      @EnvironmentObject var environment: AppEnvironment

      var body: some View {
          Text(environment.userSettings.someProperty)
      }
  }
  
### Основные отличия
1. Область видимости:
   - @ObservedObject требует передачи объекта в конкретное представление.
   - @EnvironmentObject позволяет извлекать объект из общего контекста, доступного для всех дочерних представлений.

2. Регистрация:
   - @ObservedObject создается и используется непосредственно в представлении.
   - @EnvironmentObject должен быть зарегистрирован в окружающей среде на уровне приложения или родительского представления.

3. Назначение:
   - @ObservedObject часто используется для ситуаций, когда объект данных требуется единичному представлению.
   - @EnvironmentObject предназначен для глобальных данных, которые могут использоваться несколькими представлениями.

