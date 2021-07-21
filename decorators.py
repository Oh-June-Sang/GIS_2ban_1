
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


def check_integer(func):
    def decorated(width, height):
        if width >=0 and height >=0 :
            return func(width,height)
        else:
            raise ValueError("inpuut must be post")
    return decorated


@check_integer
def rect_area(width, height):
    return width * height

@check_integer
def tri_area(width, height):
    return 0.5 * width * height

print(tri_area(1,2))
print(rect_area(1,2))