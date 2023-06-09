﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Перезаполнение 
* Заполнение констант 
	И заполнение констант
			
* Заполнение организаций
	И загрузка организаций
	
			
* Заполнение складов
	И загрузка складов
	
* Заполнение покупателей
	И проверяю или загружаю покупателей
				
	* Запуск приложения
		Когда открылось окно 'Начальная страница'
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
		Тогда открылось окно 'Заказы товаров'
	* Создание документа Заказ

		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Заказ (создание)'
	* Заполнение документа Заказ
		И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
		И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Покупатель цена опт'
		И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	* Заполнение таблицы Товары
		И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
		И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Босоножки'
		И я перехожу к следующему реквизиту
		И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
		И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	* Проверка заполнения таблицы Товары
		Тогда таблица "Товары" стала равной:
			| 'Товар'     | 'Цена'    | 'Количество' | 'Сумма'    |
			| 'Босоножки' | '1 800,00' | '5'          | '9 000,00' |
	* Проведение документа Заказ
		И в таблице "Товары" я завершаю редактирование строки
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
		И я жду закрытия окна 'Заказ * от *' в течение 20 секунд
	