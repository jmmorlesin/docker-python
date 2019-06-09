import os

TARGET_PATH = 'target'

def main():
	if not os.path.exists(TARGET_PATH):
		os.mkdir(TARGET_PATH)

	f = open(f'{TARGET_PATH}/sample.txt','w')
	for i in range(10):
         f.write("This is line %d\r\n" % (i+1))

	f.close()

if __name__== "__main__":
	main()
