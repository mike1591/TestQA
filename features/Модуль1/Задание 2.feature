﻿#language: ru



Функционал: создать документ Заказ

Как администратор я хочу
чтобы в строке сумма = цена * Уоличество 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
// создание 
Сценарий: ввод услуги и заполнение поля "количество"

* Открыие форы документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'

* Заполнение шапки
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'

* Заполнение таблицы товары 	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Доставка'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1 000,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1'
* Запись документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
