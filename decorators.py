
def decorator(func):
    def decorated(input_text):
        print("함수 시작!")
        func(input_text)
        print("함수 끝!")
    return decorated


@decorator
def hello_world(input_text):
    print("함수 시작!")
    print(input_text)
    print("함수 끝!")

hello_world("Hello world")