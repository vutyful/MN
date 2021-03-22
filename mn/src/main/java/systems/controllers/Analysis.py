#!/usr/bin/env python
# coding: utf-8
from selenium import webdriver
from bs4 import BeautifulSoup
import pandas as pd
import time
import os
import sys


# 선택자를 이용하여 이름 / 상세 / 가격 데이터를 가져오는 함수


def get_prod_items(prod_items, page):
    prod_data = []
    for prod_item in prod_items:
        try:
            title = prod_item.select('p.prod_name')[0].text.strip()
        except:
            # 이름이 없는 상품의 경우 제외한다.
            continue;
        try:
            # 공기청정기 같은 경우 상세 데이터가 두 개이며
            # 차후 편리한 구분을 위해 구분자 '|'를 포함하여 삽입한다.
            spec_list = prod_item.select('div.spec_list')[0].text.strip()
        except:
            spec_list = '';
        try:
            # 가격 역시 차후 편한 계산을 위해 ','를 제거해준다.
            price = prod_item.select_one('em.lowest').text.strip()
        except:
            price = 'None'
        try:
            link = prod_item.select('a')[0]['href']
        except:
            link = 'None'
        try:
            temp = prod_item.select_one('img')
            if 'image_lazy' in temp['class']:
                img = temp['data-original']
            else:
                img = temp['src']
        except:
            img = 'None'
        prod_data.append([title, spec_list, price, link, img])
    return prod_data


# 각 페이지의 접근을 편하게 하기 위한 함수
def get_search_page_url(keyword, page):
    temp = (
        "http://search.danawa.com/dsearch.php?query={}&originalQuery={}&volumeType=allvs&page={}&limit=40&sort=saveDESC&list=list&boost=true&addDelivery=N&recommendedSort=Y&defaultUICategoryCode=19227166&defaultPhysicsCategoryCode=220348%7C220543%7C220651%7C0&defaultVmTab=3806&defaultVaTab=1163209&tab=goods")
    return temp.format(keyword, keyword, page)

# 드라이버가 있는 위치 지정
print(sys.argv[1])

directory = sys.argv[1] + "chromedriver.exe";
driver = webdriver.Chrome(directory)
driver.implicitly_wait(3)
keyword = '사료'
total_page = 10
prod_data_total = []

for page in range(1, total_page + 1):
    url = get_search_page_url(keyword, page)
    driver.get(url)
    time.sleep(5)

    html = driver.page_source
    soup = BeautifulSoup(html, 'html.parser')

    prod_items = soup.select('li.prod_item')
    prod_item_list = get_prod_items(prod_items, page)

    prod_data_total = prod_data_total + prod_item_list
driver.quit()


# 각 데이터를 '상품명', '스펙 목록', '가격'으로 나누어 엑셀형식으로 저장한다.
data = pd.DataFrame(prod_data_total)
data.columns = ['상품명', '스펙 목록', '가격', '링크', '이미지']
data.to_excel(sys.argv[1] + '../../../../resources/data/result.xlsx', index=False)

from selenium import webdriver
from bs4 import BeautifulSoup
import pandas as pd
import time
import os
import re

data = pd.read_excel(sys.argv[1] + '../../../../resources/data/result.xlsx')
# 데이터 확인
data.info()
data.head()

# 이름 데이터에서 회사와 제품명을 구분하여 list를 통해 저장한다.
company_list = []
product_list = []
for title in data['상품명']:
    title_info = title.split(' ', 1)
    if len(title_info) == 1:
        company_name = title_info[0]
        product_name = title_info[0]
    else:
        company_name = title_info[0]
        product_name = title_info[1]
    company_list.append(company_name)
    product_list.append(product_name)
# 상세 데이터에서 각 세부항목을 나누어 저장한다.
category_list = []
age_group_list = []
form_list = []
function_list = []
protein_list = []
fat_list = []
for spec_data in data['스펙 목록']:
    # 해당 사이트의 상세내용 구분자는 '/' 이다.
    spec_list = str(spec_data).split(' [')
    first_option = spec_list[0].strip()
    first = first_option.split('/')

    for spec in first:
        if '사료' in spec:
            category = spec.strip();
        elif '용' in spec and '용량' not in spec:
            temp = spec.split(' ')
            if len(temp) > 3:
                age_group = temp[2].strip();
            else:
                age_group = spec.split('(')[1].replace(')', '').strip();
        elif '식' in spec:
            form = spec;

    category_list.append(category);
    age_group_list.append(age_group);
    form_list.append(form);

    function_value = None
    protein_value = None
    fat_value = None

    for spec in spec_list:
        if '기능' in spec:
            # [기능] 이 포함된 문장을 ' '로 나누어서 2번째 것.
            function_value = spec.split(']')[1].strip()
        if '영양성분' in spec:
            temp_value = spec.split(']')[1].strip().split('/')
            for num in temp_value:
                if '조단백' in num:
                    if ':' in num:
                        protein_value = num.split(':')[1].replace("%", '').replace("g", '')
                    else:
                        protein_value = num.strip().split(' ')[1].replace("%", '').replace("g", '')
                elif '조지방' in num:
                    if ':' in num:
                        fat_value = num.split(':')[1].replace("%", '').replace("g", '')
                    else:
                        fat_value = num.strip().split(' ')[1].replace("%", '').replace("g", '')
    function_list.append(function_value)
    protein_list.append(protein_value)
    fat_list.append(fat_value)
price_list = []
for price in data['가격']:
    price_list.append(price.split('/')[0].replace('원', '').replace(',', '').strip())

# DataFrame의 각 항목을 생성하고 준비된 리스트를 삽입한다.
pd_data = pd.DataFrame()
pd_data['카테고리'] = category_list
pd_data['연령대'] = age_group_list
pd_data['형태'] = form_list
pd_data['회사명'] = company_list
pd_data['제품'] = product_list
pd_data['가격'] = price_list
pd_data['기능'] = function_list
pd_data['조단백(%)'] = protein_list
pd_data['조지방(%)'] = fat_list
pd_data['링크'] = data['링크']
pd_data['이미지'] = data['이미지']
# 저장하기 전 항목을 확인한다.
pd_data

# 동일하지만 다른 카테고리가 있을 수 있기 때문에 확인해준다.
pd_data['카테고리'].value_counts()
# 조단백 결측값을 제거함
pd_data = pd_data[pd_data['조단백(%)'].str.contains('None') == False]
pd_data.to_excel(sys.argv[1] + '../../../../resources/data/data_final.xlsx', index=False)
pd_data


chart_data = pd.read_excel(sys.argv[1] + '../../../../resources/data/data_final.xlsx')
chart_data.info()
chart_data.head()

from matplotlib import font_manager, rc
import matplotlib.pyplot as plt
import platform
import requests

# 그래프에 한글을 사용하기 위해 한글처리 및 폰트를 호출한다.
font_path = ''
# 각 OS에 따른 처리
if platform.system() == 'Windows':
    font_path = 'c:/Windows/Fonts/malgun.ttf'
    font_name = font_manager.FontProperties(fname=font_path).get_name()
    rc('font', family=font_name)
elif platform.system() == 'Darwin':
    font_path = '/Users/$USER/Library/Fonts/AppleGothic.ttf'
    rc('font', family='AppleGothic')
else:
    print('Check your OS system')

def product_result(chart_data, num):
    # 최소, 최대, 평균값을 저장한다.
    protein_max_value = chart_data['조단백(%)'].max()
    protein_min_value = chart_data['조단백(%)'].min()
    protein_mean_value = chart_data['조단백(%)'].mean()
    fat_max_value = chart_data['조지방(%)'].max()
    fat_min_value = chart_data['조지방(%)'].min()
    fat_mean_value = chart_data['조지방(%)'].mean()
    price_max_value = chart_data['가격'].max()
    price_min_value = chart_data['가격'].min()
    price_mean_value = chart_data['가격'].mean()

    good_product = chart_data[(chart_data['가격'] <= price_mean_value) &
        (chart_data['조단백(%)'] >= protein_mean_value) &
        (chart_data['조지방(%)'] >= fat_mean_value)]
    good_product = good_product[:10]
    good_product

    # 인기제품 데이터 시각화
    chart_data_selected = good_product

    # 그래프 크기, 제목, 형태 설정
    plt.figure(figsize=(10, 10))

    plt.scatter(chart_data_selected['조단백(%)'], chart_data_selected['조지방(%)'],
                s=700, c=chart_data_selected['가격'], cmap=plt.cm.rainbow)
    plt.xlabel('조단백(%)', size=15)
    plt.ylabel('조지방(%)', size=15)

    # 색상의 의미를 명확히 전달하기 위해 컬러바를 표기함
    cb = plt.colorbar()
    cb.set_label(label='가격', size='large')

    # 평균값을 표기할 plot 그래프 생성
    plt.plot([0, protein_max_value], [fat_mean_value, fat_mean_value], 'r--', lw=1)
    plt.plot([protein_mean_value, protein_mean_value], [0, fat_max_value], 'r--', lw=1)

    # 표기 범위 지정
    plt.xlim(protein_mean_value - 1, chart_data_selected['조단백(%)'].max() + 1)
    plt.ylim(fat_mean_value - 1, chart_data_selected['조지방(%)'].max() + 1)

    # x좌표, y좌표를 찾아 제품명 표기
    for index, row in chart_data_selected.iterrows():
        x = row['조단백(%)']
        y = row['조지방(%)']
        s = row['제품'].strip()
        plt.text(x, y, s, size=10)
        
    #DB 연동
    for i, row in chart_data_selected.iterrows():
        #pro_num, pro_name, price, pro_cate, pro_img, pro_link, pro_age
        
        sql = """insert into product values(:1, :2, :3, :4, :5, :6, :7, null)"""
        img = "/mn/resources/data/img/" + row['제품'].replace(' ', '_').replace('%','') + '.jpg'
        temp = (i, row['제품'], row['가격'], row['카테고리'], img, row['링크'], row['연령대'])
        cursor = conn.cursor()
        cursor.execute(sql, temp)
        cursor.close()
        conn.commit()
    plt.savefig(sys.argv[1] + '../../../../resources/data/pandas/result_' + str(num) + '.png')

    for product in chart_data_selected.T.to_dict().values():
        headers = {'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36'}
        response = requests.get(product['이미지'], headers=headers)
        file = open(sys.argv[1] + '../../../../resources/data/img/' + product['제품'].replace(' ', '_') + '.jpg', "wb")
        file.write(response.content)
        file.close()
    


cate_array = ['고양이', '강아지'];
age_array = [];

i = 0;
import cx_Oracle

conn = cx_Oracle.connect('mn/1234@192.168.0.79:1521/orcl')
cursor = conn.cursor()
sql = """delete from product"""
cursor.execute(sql)
print("ddd")
cursor.close();
conn.commit()

for cate in cate_array:
    if cate == '고양이':
        age_array = ['키튼', '어덜트', '시니어', '전연령용']
    else:
        age_array = ['퍼피', '어덜트', '시니어', '전연령용']
    for age in age_array:
        product_result(chart_data[chart_data['카테고리'].str.contains(cate) & chart_data['연령대'].str.contains(age)], i+1);
        i+=1;
conn.close()
