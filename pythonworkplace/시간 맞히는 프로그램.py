# 속으로 10초 세어 맞히는 프로그램

import time

input("엔터를 누르고 10초를 세주세요.")
start = time.time()

input("10초 후에 다시 엔터를 눌러주세요.")
end = time.time()

et = end - start
print("실제 시간:", et, "초")
print("시간차: ",abs(et-10), "초") # abs는 절댓값
