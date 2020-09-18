from selenium import webdriver
import time
from selenium.webdriver.common.keys import Keys
from os import system

#1.0

# 使用 Chrome 的 WebDriver
driver = webdriver.Chrome()

# wlb
driver.get('https://')
window_wlb = driver.window_handles[0]

#點擊並輸入值
driver.find_element_by_id('acc').click()
driver.find_element_by_id('acc').send_keys('123')
driver.find_element_by_id('pwd').click()
driver.find_element_by_id('pwd').send_keys('123')

#_____________________________________________________________

#MNC
driver.execute_script('window.open("http://");') #新開一個頁面，通過執行js來新開一個頁面
window_mnc = driver.window_handles[1]

#切換窗口
driver.switch_to.window(window_mnc)

#點擊並輸入值
driver.find_element_by_id('acc').click()
driver.find_element_by_id('acc').send_keys('123')
driver.find_element_by_id('pwd').click()
driver.find_element_by_id('pwd').send_keys('123')

#點擊登入
driver.find_element_by_id('btn_login').click()

#緩衝
time.sleep(1)

#_____________________________________________________________

#Ha
driver.execute_script('window.open("http://");')
window_ha = driver.window_handles[2]

#切換窗口
driver.switch_to.window(window_ha)

#點擊並輸入值
driver.find_element_by_id('acc').click()
driver.find_element_by_id('acc').send_keys('123')
driver.find_element_by_id('pwd').click()
driver.find_element_by_id('pwd').send_keys('123')

#點擊登入
driver.find_element_by_id('btn_login').click()

#緩衝
time.sleep(1)

#_____________________________________________________________

#mul
driver.execute_script('window.open("http://");')
window_mul = driver.window_handles[3]

#切換窗口
driver.switch_to.window(window_mul)

#點擊並輸入值
driver.find_element_by_id('acc').click()
driver.find_element_by_id('acc').send_keys('123')
driver.find_element_by_id('pwd').click()
driver.find_element_by_id('pwd').send_keys('123')

#_____________________________________________________________

#2.0

#xh
driver.execute_script('window.open("http://");')
window_xh = driver.window_handles[4]

#切換窗口
driver.switch_to.window(window_xh)

time.sleep(4)

#點擊並輸入值
driver.find_element_by_xpath("//input[@placeholder='Username']").click()
driver.find_element_by_xpath("//input[@placeholder='Username']").send_keys('123')
driver.find_element_by_xpath("//input[@placeholder='Password']").click()
driver.find_element_by_xpath("//input[@placeholder='Password']").send_keys('123')

#_____________________________________________________________

#db
driver.execute_script('window.open("http://");')
window_db = driver.window_handles[5]

#切換窗口
driver.switch_to.window(window_db)

time.sleep(4)

#點擊並輸入值
driver.find_element_by_xpath("//input[@placeholder='Username']").click()
driver.find_element_by_xpath("//input[@placeholder='Username']").send_keys('123')
driver.find_element_by_xpath("//input[@placeholder='Password']").click()
driver.find_element_by_xpath("//input[@placeholder='Password']").send_keys('123')

#_____________________________________________________________

#bf
driver.execute_script('window.open("http://");')
window_bf = driver.window_handles[6]

#切換窗口
driver.switch_to.window(window_bf)

time.sleep(4)

#點擊並輸入值
driver.find_element_by_xpath("//input[@placeholder='Username']").click()
driver.find_element_by_xpath("//input[@placeholder='Username']").send_keys('123')
driver.find_element_by_xpath("//input[@placeholder='Password']").click()
driver.find_element_by_xpath("//input[@placeholder='Password']").send_keys('123')

#_____________________________________________________________

#gbb
driver.execute_script('window.open("http://");')
window_gbb = driver.window_handles[7]

#切換窗口
driver.switch_to.window(window_gbb)

time.sleep(4)

#點擊並輸入值
driver.find_element_by_xpath("//input[@placeholder='Username']").click()
driver.find_element_by_xpath("//input[@placeholder='Username']").send_keys('123')
driver.find_element_by_xpath("//input[@placeholder='Password']").click()
driver.find_element_by_xpath("//input[@placeholder='Password']").send_keys('123')

#_____________________________________________________________

#blds
driver.execute_script('window.open("http://");')
window_blds = driver.window_handles[8]

#切換窗口
driver.switch_to.window(window_blds)

time.sleep(4)

#點擊並輸入值
driver.find_element_by_xpath("//input[@placeholder='Username']").click()
driver.find_element_by_xpath("//input[@placeholder='Username']").send_keys('123')
driver.find_element_by_xpath("//input[@placeholder='Password']").click()
driver.find_element_by_xpath("//input[@placeholder='Password']").send_keys('123')

#_____________________________________________________________

#pd
driver.execute_script('window.open("http://");')
window_pd = driver.window_handles[9]

#切換窗口
driver.switch_to.window(window_pd)

time.sleep(4)

#點擊並輸入值
driver.find_element_by_xpath("//input[@placeholder='Username']").click()
driver.find_element_by_xpath("//input[@placeholder='Username']").send_keys('123')
driver.find_element_by_xpath("//input[@placeholder='Password']").click()
driver.find_element_by_xpath("//input[@placeholder='Password']").send_keys('123')
