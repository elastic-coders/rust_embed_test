from ctypes import cdll

lib = cdll.LoadLibrary("libembed.so")

if __name__ == '__main__':
    lib.process()
